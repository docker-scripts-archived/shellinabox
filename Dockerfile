FROM ubuntu:18.04

### install systemd
RUN apt update && \
    apt -y upgrade && \
    apt -y install systemd && \
    systemctl set-default multi-user.target

CMD ["/sbin/init"]
WORKDIR /host

### Update and upgrade and install some other packages.
RUN apt -y install openssl shellinabox
RUN apt -y install less vim aptitude build-essential locales ssmtp \
            wget figlet rig pv fortune fortunes-min fortunes-ubuntu-server
