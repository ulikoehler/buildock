FROM ulikoehler/ubuntu-opencascade-rapidjson
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install curl && curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs && rm -rf /var/lib/apt/lists/*
