import requests
import json

url = "http://localhost:7654"

filenum = "test"
filename = f"JSON_Outputs/p_{filenum}.json"

with open(filename, "r") as infile:
    json_output = json.load(infile)

payload = {
    "task": "lean_from_json_structured",
    "json_structured": json_output,
    "greedy": False
}

headers = {
    "Content-Type": "application/json"
}

response = requests.post(url, headers=headers, data=json.dumps(payload))

if response.ok:
    with open(f"Responses/resp_{filenum}.json", "w") as f:
        json.dump(response.json(), f, indent=2)
    print(f"Response saved to resp_{filenum}.json")
    print("Output Lean code:")
    print("---------------------")
    print(response.json()["lean_code"])
    print("---------------------")
else:
    print(f"Request failed with status code {response.status_code}")
    print("Response text:", response.text)
