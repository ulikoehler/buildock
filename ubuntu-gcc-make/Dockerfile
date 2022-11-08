FROM ubuntu:22.04
RUN apt update && apt -y install build-essential make && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/make" ]
