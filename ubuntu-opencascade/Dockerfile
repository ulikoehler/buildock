FROM ulikoehler/ubuntu-opencascade
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:freecad-maintainers/freecad-daily && apt-get update && apt-get install -y cmake libocct-\* && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/make" ]
