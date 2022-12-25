FROM ulikoehler/bup:latest
# Install dropbear
# https://techoverflow.net/2022/12/25/minimal-ssh-server-on-docker-container-using-dropbear/
ENV SSH_USER=bup
ENV SSH_PORT=2022
RUN apk --no-cache add dropbear &&\
    mkdir -p /home/$SSH_USER/.ssh &&\
    adduser -s /bin/sh -D $SSH_USER --home /home/$SSH_USER &&\
    chown -R $SSH_USER:$SSH_USER /home/$SSH_USER

CMD ["/bin/sh", "-c", "/usr/sbin/dropbear -RFEwgsjk -G ${SSH_USER} -p ${SSH_PORT}"]
