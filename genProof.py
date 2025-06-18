# Run command: python3 genProof.py --s "statement" --p "name"

# statement is the mathematical statement
# name is the directory inside which the files will be stored

from openai import OpenAI
import json
import os

def main(statement, name):

    client = OpenAI()

    # Set the Outputs directory over here
    direc = f"NewSet2/{name}"

    # Creates the direc if it doesn't exist
    os.makedirs(direc, exist_ok=True)

    statement_file = f"{direc}/statement.txt"
    prompt_file = f"{direc}/prompt.txt"
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

    with open(prompt_file, "w") as outfile:
        outfile.write(
            f"Convert the given mathematical statement and its proof into the format of the JSON Schema given below.\nONLY fill the parts of the schema that are applicable.\n\nMathematical Statement:\n{statement}\n\nProof:\n{proof_response.output_text}\n\nJSON Schema:\n{jsonSchema}\n\nGive the proof in the format of the JSON Schema given.\nStrictly adhere to the schema."
        )

    with open(f"{direc}/input.json", "w") as outfile:
        pass
 
if __name__ == "__main__":
    
    import argparse
    parser = argparse.ArgumentParser(description="parser")
    parser.add_argument("--s", metavar="path", required=True, help="problem statement")
    parser.add_argument("--p", metavar="path", required=True, help="output folder name")
    args=parser.parse_args()

    main(args.s, args.p)