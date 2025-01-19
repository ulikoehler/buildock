FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive

# xvfb-run can be used to run GUI applications like scribus in a headless environment
RUN apt update && apt install -y scribus xvfb nodejs python3 python3-yaml git && rm -rf /var/lib/apt/lists/*
WORKDIR /app
