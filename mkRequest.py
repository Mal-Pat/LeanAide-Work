# Run command: python3 mkRequest.py --p "name"

# name is the directory inside the Outputs directory which has the input.json file.
# It must contain an input.json file with the JSON Schema for the statements and its proof.

import requests
import json

def main(name):

    url = "http://localhost:7654"

    # Set the Outputs directory over here
    direc = f"Basic/{name}"

    input_file = f"{direc}/input.json"
    response_file = f"{direc}/response.json"
    lean_file = f"{direc}/lean_code.lean"

    with open(input_file, "r") as infile:
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
        # Dump the response JSON into response.json in the same directory.
        with open(response_file, "w") as f:
            json.dump(response.json(), f, indent=2)
        print(f"Response saved.")

        print("Output Lean code:")
        print("---------------------")
        print(response.json()["top_code"])
        print(response.json()["lean_code"])
        print("---------------------")

        # Write the output Lean code into lean_code.lean in the same directory.
        with open(lean_file, "w") as f:
            f.write(response.json()["top_code"])
            f.write(response.json()["lean_code"])

    else:
        print(f"Request failed with status code {response.status_code}")
        print("Response text:", response.text)

if __name__ == "__main__":
    
    import argparse
    parser = argparse.ArgumentParser(description="parser")
    parser.add_argument("--p", metavar="path", required=True, help="problem folder name where input.json is")
    args=parser.parse_args()

    main(args.p)