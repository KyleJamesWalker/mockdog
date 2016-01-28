FROM alpine:3.2

# Install Dependencies
RUN apk add --update python git python-dev py-pip gcc libgcc musl-dev && \
    pip install --upgrade pip

WORKDIR /home

COPY mockdog.py /home/mockdog.py

EXPOSE 8125/UDP
ENTRYPOINT ["python", "mockdog.py"]
