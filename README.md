## Using `mkRequest.py`

Create a directory to store your responses with a folder for each problem.

The problem folder must contain an `Input.json` file with the proof in the JSON Schema.

Set the directory correctly in `mkRequest.py`.

Run the command below substituting *name* with the problem folder name.

```
python3 mkRequest.py --p "name"
```

The `lean_code.lean` and `Response.json` files will be generated within the same problem folder.