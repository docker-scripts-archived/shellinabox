include(bionic)

### Update and upgrade and install some other packages.
RUN echo y | unminimize
RUN apt install --yes openssl shellinabox
RUN apt install --yes less wget figlet rig pv build-essential \
                      fortune fortunes-min fortunes-ubuntu-server
