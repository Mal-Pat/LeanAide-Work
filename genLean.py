# Run command: python3 mkRequest.py --p "name"

# name is the directory inside the Outputs directory which has the Input.json file.
# It must contain an Input.json file with the JSON Schema for the statements and its proof.

import requests
import json
from openai import OpenAI
import sys
import os

def main(statement, name):

    client = OpenAI()

    # Set the Outputs directory over here
    direc = f"NewSet1/{name}"

    # Creates the direc if it doesn't exist
    os.makedirs(direc, exist_ok=True)

    statement_file = f"{direc}/statement.txt"
    input_json_file = f"{direc}/input.json"
    response_file = f"{direc}/response.json"
    lean_file = f"{direc}/lean_code.lean"
    json_schema_file = "/home/malpat/LeanAide/resources/PaperStructure.json"

    with open(json_schema_file, "r") as infile:
        jsonSchema = json.load(infile)

    print("------Statement------\n")
    print(statement)
    print("\n---------------------\n")

    print("Producing the proof...\n")

    statement_to_proof_prompt = f"""
        Produce a clear and concise declarative style proof for the following mathematical statement.

        Mathematical statement: {statement}

        Follow the instructions while producing the proof:

        1. Focus on what is true, and NOT on instructing the reader.
        2. Introduce objects with clear, reusable identifiers. Explicitly name all the quantities being used.
        3. Avoid relying on implicit assumptions.
        4. Avoid using pronouns and too much natural language.
        5. Provide the definitions of objects being used.
        6. State the goal at each step clearly.
        7. Be explicit when different cases are used.

        Give the clear and concise declarative style proof for the mathematical statement.
        """

    proof_response = client.responses.create(
        model="o4-mini",
        input=[{"role": "user", "content": statement_to_proof_prompt}]
    )

    print("------Proof------\n")
    print(proof_response.output_text)
    print("\n-----------------\n")

    with open(statement_file, "w") as outfile:
        outfile.write(f"Statement:\n\n{statement}\n\nProof:\n\n{proof_response.output_text}")

    print(f"Statement and Proof written into {statement_file}\n")

    print("Converting proof to JSON...\n")

    proof_to_json_prompt = f"""
        Convert the given mathematical statement and its proof into the format of the JSON Schema given below.
        ONLY fill the parts of the schema that are applicable. 

        Mathematical Statement:
        {statement}

        Proof:
        {proof_response.output_text}

        JSON Schema:
        {jsonSchema}

        Give the proof in the format of the JSON Schema given.
        Strictly adhere to the schema.
        """

    json_response = client.responses.create(
        model="o4-mini",
        input=[{"role": "user", "content": proof_to_json_prompt}]
    )

    with open(input_json_file, "w") as outfile:
        outfile.write(json_response.output_text)

    print(f"JSON written into {input_json_file}\n")

    ct = input("Continue? (y/n): ")
    if ct != "y" and ct != "Y":
        sys.exit("Code terminates!")

    print("\nProducing Lean Code...\n")

    url = "http://localhost:7654"

    with open(input_json_file, "r") as infile:
        json_output = json.load(infile)

    # Set the payload for the request.
    payload = {
        "task": "lean_from_json_structured",
        "json_structured": json_output,
        "greedy": False
    }

    # Set the headers for the request.
    headers = {
        "Content-Type": "application/json"
    }

    response = requests.post(url, headers=headers, data=json.dumps(payload))

    if response.ok:
        # Dump the response JSON into Response.json in the same directory.
        with open(response_file, "w") as f:
            json.dump(response.json(), f, indent=2)
        print(f"Response saved into {response_file}\n")

        print("------Lean Code------\n")
        print(response.json()["lean_code"])
        print("\n---------------------\n")

        # Write the output Lean code into lean_code.lean in the same directory.
        with open(lean_file, "w") as f:
            f.write("import Mathlib\n\n")
            f.write(response.json()["lean_code"])

        print(f"Lean Code written into {lean_file}")

    else:
        print(f"Request failed with status code {response.status_code}")
        print("Response text:", response.text)

if __name__ == "__main__":
    
    import argparse
    parser = argparse.ArgumentParser(description="parser")
    parser.add_argument("--s", metavar="path", required=True, help="problem statement")
    parser.add_argument("--p", metavar="path", required=True, help="output folder name")
    args=parser.parse_args()

    main(args.s, args.p)