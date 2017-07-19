shellinabox
===========

I need to give shell access to my Linux students and the most easy way
is by using shellinabox. They can also install Linux at home, but still
it is more fun when you use Linux in a multi-user environment. It is also
easier for me to assign and evaluate homeworks.


## Installation

  - Get scripts from GitHub:
    ```
    mkdir -p /opt/src/
    cd /opt/src/
    git clone https://github.com/docker-build/shellinabox
    ```

  - Create a working directory for the container:
    ```
    mkdir -p /opt/workdir/shell1
    cd /opt/workdir/shell1/
    ln -s /opt/src/shellinabox .
    cp shellinabox/utils/settings.sh .
    vim settings.sh
    ```

  - Build image, create the container, start it and configure it:
    ```
    shellinabox/docker/build.sh
    shellinabox/docker/create.sh
    shellinabox/docker/start.sh
    shellinabox/config.sh
    ```
