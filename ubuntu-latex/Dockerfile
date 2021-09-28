FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt -y install texlive-latex-recommended texlive-lang-all texlive-latex-extra && apt -y purge texlive-\*-doc && rm -rf /var/lib/apt/lists/*
WORKDIR /app
CMD [ "/usr/bin/pdflatex" ]
