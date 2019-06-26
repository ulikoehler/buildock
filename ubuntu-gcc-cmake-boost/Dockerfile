FROM ulikoehler/ubuntu-gcc-cmake
RUN apt update && apt -y install libboost-all-dev && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/make" ]
