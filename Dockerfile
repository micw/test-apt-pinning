FROM debian:9

ADD apt-pin-unstable /etc/apt/preferences.d/limit-unstable

RUN echo "deb http://deb.debian.org/debian/ unstable main" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

ADD test.sh /test.sh
ADD apt-pin-docker1 /apt-pin-docker1
ADD apt-pin-docker2 /apt-pin-docker2
CMD /test.sh

