FROM node:lts
RUN apt-get update && apt-get -y install mongo-tools && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/node" ]
