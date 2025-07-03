from jsonschema import validate
import json

with open("Basic_direct/foralln_existsa/input.json", "r") as infile:
    output = json.load(infile)

with open("/home/malpat/LeanAide/resources/PaperStructure.json", "r") as infile:
    SCHEMA_JSON = json.load(infile)

try:
    validate(instance=output, schema=SCHEMA_JSON)
except Exception as e:
    print("Error!!!", e)
else:
    print("Validated!")
