FROM ulikoehler/ubuntu-gcc-cmake-boost
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install -y xfonts-scalable libocct-data-exchange-dev libocct-draw-dev libocct-foundation-dev libocct-modeling-algorithms-dev libocct-modeling-data-dev libocct-ocaf-dev libocct-visualization-dev && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/make" ]
