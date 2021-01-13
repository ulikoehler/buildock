FROM ulikoehler/ubuntu-gcc-make
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt -y install cmake cmake-extras && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/make" ]
