FROM node:lts
RUN apt-get update && apt-get -y install inkscape graphicsmagick imagemagick && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/inkscape" ]
