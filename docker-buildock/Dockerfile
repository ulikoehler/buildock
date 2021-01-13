FROM docker:stable
RUN apk add curl bash
RUN curl -fsSL https://techoverflow.net/install-buildock.sh > /etc/profile.d/buildock.sh && chmod a+x /etc/profile.d/buildock.sh
# Login shell to SOURCE /etc/profile.d/buildock.sh instead of running it
CMD [ "/bin/bash", "-l" ]
