FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt-get -y install octave gnuplot && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/make" ]
