FROM ubuntu:20.04
RUN apt update && apt -y install streamripper && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/streamripper" ]
