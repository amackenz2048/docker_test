FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 

RUN mkdir /app
COPY src/test.py /app/

ENTRYPOINT ["/usr/bin/env", "python3", "/app/test.py"]
