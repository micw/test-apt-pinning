FROM debian:9

RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

ADD test.sh /test.sh
ADD apt-pin-docker1 /apt-pin-docker1
ADD apt-pin-docker2 /apt-pin-docker2
CMD /test.sh

