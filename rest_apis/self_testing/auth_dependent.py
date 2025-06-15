import requests

def get_authentication():
        url="http://192.168.0.131:8080/auth/login"
        request_headers = {"Content-Type": "application/x-www-form-urlencoded","accept": "application/json"}
        payload = {"username": "admin", "password": "admin"}
        response = requests.post(f"{url}", headers=request_headers, data=payload)
        print(response,response.status_code)
        # print(response.json())
        for key,value in response.json().items():
            print(key,":",value)
        return response


data=get_authentication()