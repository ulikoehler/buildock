FROM fedora:34
RUN yum -y install mkpasswd && yum -y clean all  && rm -rf /var/cache
WORKDIR /app
CMD ["/usr/bin/mkpasswd"]
