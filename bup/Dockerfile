FROM alpine:3.17
COPY ./bup /app/bup
RUN cd /app/bup && ./configure && make -j4
WORKDIR /app
CMD [ "/usr/local/bin/bup" ]
