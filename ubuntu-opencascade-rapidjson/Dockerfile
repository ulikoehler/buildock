FROM ulikoehler/ubuntu-opencascade
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y rapidjson-dev && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/make" ]
