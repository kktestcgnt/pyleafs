import requests

output=requests.get("http://192.168.0.131:8080/health")
status=output.status_code
data=output.json()
print(status)
print(data)
print(output)
print(type(data))
print(data['detail'])