FROM python:3.5.1-alpine

WORKDIR /home

COPY mockdog.py /home/mockdog.py

EXPOSE 8125/UDP
ENTRYPOINT ["python", "mockdog.py"]
