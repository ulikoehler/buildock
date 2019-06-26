FROM ulikoehler/ubuntu-gcc-make
RUN apt update && apt -y install cmake cmake-extras && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/make" ]
