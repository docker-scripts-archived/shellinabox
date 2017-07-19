FROM ubuntu:16.04
ENV container docker
# Don't start any optional services except for the few we need.
RUN find /etc/systemd/system \
         /lib/systemd/system \
         -path '*.wants/*' \
         -not -name '*journald*' \
         -not -name '*systemd-tmpfiles*' \
         -not -name '*systemd-user-sessions*' \
         -exec rm \{} \;
RUN systemctl set-default multi-user.target
CMD ["/sbin/init"]

### Update and upgrade and install some other packages.
RUN apt-get update && \
    apt-get -y upgrade
RUN apt-get -y install openssl shellinabox
RUN apt-get -y install less vim aptitude build-essential locales ssmtp \
            wget figlet rig pv fortune fortunes-min fortunes-ubuntu-server
