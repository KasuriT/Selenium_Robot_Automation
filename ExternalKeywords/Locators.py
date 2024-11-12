import json
import jsonpath

def read_locator_from_json(json_path):
    with open('C:/Users/lenovo/PycharmProjects/UdemyQAPractise/JsonFiles/Element.json') as f:
        response = json.load(f)  # No need to use .read(), as json.load() reads the file content directly
    value = jsonpath.jsonpath(response, json_path)
    return value[0] if value else None