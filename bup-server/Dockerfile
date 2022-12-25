FROM ulikoehler/bup:latest
# Install dropbear
# https://techoverflow.net/2022/12/25/minimal-ssh-server-on-docker-container-using-dropbear/
ENV SSH_PORT=2022
RUN apk --no-cache add dropbear &&\
    mkdir -p /home/bup/.ssh &&\
    adduser -s /bin/sh -D bup --home /home/bup &&\
    chown -R bup:bup /home/bup

CMD ["/bin/sh", "-c", "/usr/sbin/dropbear -RFEwgsjk -G bup -p ${SSH_PORT}"]
