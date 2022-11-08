FROM ubuntu:22.04
# Install NodeJS & Dummy xorg
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install curl && curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs xserver-xorg-video-dummy && rm -rf /var/lib/apt/lists/*
