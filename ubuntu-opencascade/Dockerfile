FROM ulikoehler/ubuntu-gcc-cmake-boost
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:freecad-maintainers/freecad-daily && apt-get update && apt-get install -y xfonts-scalable libocct-data-exchange-dev libocct-draw-dev libocct-foundation-dev libocct-modeling-algorithms-dev libocct-modeling-data-dev libocct-ocaf-dev libocct-visualization-dev && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/make" ]
