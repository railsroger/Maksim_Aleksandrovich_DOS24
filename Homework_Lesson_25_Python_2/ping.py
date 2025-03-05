import os

ip = ["10.10.9.24", "10.10.9.3", "10.10.9.9"]
i = 0
while i < len(ip):
    print(ip[i])    
    response = os.popen(f'ping {ip[i]}').read()
    i += 1
    print(response)
    with open("ping_result.txt", "a") as file:
        file.writelines(response)
     
print("The result of host availability is written to a file.")