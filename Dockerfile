# syntax=docker/dockerfile:1

# FROM python:3.9.2
#FROM python:3.8-slim-buster
FROM python:3.9-alpine3.13

WORKDIR python-docker

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]