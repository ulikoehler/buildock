FROM docker:stable
RUN apk add curl bash
RUN curl -fsSL https://techoverflow.net/install-buildock.sh >> ~/.bashrc
WORKDIR /app
ENTRYPOINT [ "/bin/bash" ]
