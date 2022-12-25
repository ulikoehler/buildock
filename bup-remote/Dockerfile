FROM ulikoehler/bup:latest
# Install dropbear
# https://techoverflow.net/2022/12/25/minimal-ssh-server-on-docker-container-using-dropbear/
ENV SSHUSER=bup
RUN apk --no-cache add dropbear &&\
    mkdir -p /home/$SSHUSER/.ssh &&\
    adduser -s /bin/sh -D $SSHUSER --home /home/$SSHUSER &&\
    chown -R $SSHUSER:$SSHUSER /home/$SSHUSER

CMD ["/bin/sh", "-c", "/usr/sbin/dropbear -RFEwgsjk -G ${SSHUSER} -p 22"]
