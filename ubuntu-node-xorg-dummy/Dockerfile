FROM ubuntu:18.04
# Install NodeJS & Dummy xorg
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install curl && curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs xserver-xorg-video-dummy && rm -rf /var/lib/apt/lists/*
