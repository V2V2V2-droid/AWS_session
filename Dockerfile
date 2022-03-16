FROM ubuntu:20.04

RUN apt-get update && apt-get install python3 python3-pip -y

COPY main.py requirement.txt ./
# on launch, : install fastapi from requirements

RUN python3 -m pip install -r requirement.txt

CMD ['python3', '-m', 'unicorn', "main:app", "--reload",
                        "--host", "0.0.0.0", "--port", "8080"]
