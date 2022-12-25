FROM alpine:3.17
# Install requirements
RUN apk add --no-cache bash make g++ python3-dev git automake autoconf par2cmdline py3-pip && pip3 install wheel && pip3 install pyxattr
# Copy bup clone (done ahead of time in build.sh)
COPY ./bup /app/bup
# Install bup
RUN cd /app/bup && ./configure && make -j4 install PREFIX=/usr
# Cleanup: remove bup clone
RUN rm -rf /app/bup
WORKDIR /app
CMD [ "/usr/bin/bup" ]
