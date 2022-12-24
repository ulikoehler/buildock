FROM alpine:3.17
# Install requirements
RUN apk add bash make g++ python3-dev git
# Copy bup clone (done ahead of time in build.sh)
COPY ./bup /app/bup
# Install bup
RUN cd /app/bup && ./configure && make -j4 install 
# Cleanup: remove bup clone
RUN rm -rf /app/bup
WORKDIR /app
CMD [ "/usr/local/bin/bup" ]
