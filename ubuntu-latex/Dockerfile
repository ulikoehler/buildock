FROM ubuntu:18.04
RUN apt update && apt -y install texlive-full xindy latex-make latex-mk make && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/make" ]
