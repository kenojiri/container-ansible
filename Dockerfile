FROM debian:bullseye-slim

RUN apt-get update &&\
    apt-get install -y \
    zip curl git jq vim \
    gnupg
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list &&\
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 &&\
    apt-get update && apt-get install -y ansible
RUN curl -vL https://dl.minio.io/client/mc/release/linux-amd64/mc -o /usr/local/bin/mc &&\
    chmod +x /usr/local/bin/mc

### create workspace directory ###
RUN mkdir /work
WORKDIR /work

### create user/group ###
RUN useradd -u 1000 -U -m user && usermod -a -G sudo user
USER 1000:1000
COPY _bash_profile /home/user/.bash_profile

CMD ["/bin/bash", "--login"]
