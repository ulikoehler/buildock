FROM ubuntu:24.04
RUN apt update && apt -y install cmake cmake-extras && rm -rf /var/lib/apt/lists/*
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y scribus xvfb && rm -rf /var/lib/apt/lists/*
WORKDIR /app
