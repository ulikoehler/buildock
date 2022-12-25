FROM alpine:3.17
# Add dropbear (includes dropbearkey) & remove irrelevant files
RUN apk --no-cache add dropbear dropbear-convert && rm /usr/sbin/dropbear

CMD [ "/usr/bin/dropbearkey" ]