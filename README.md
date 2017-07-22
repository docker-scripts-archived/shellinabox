shellinabox
===========

I need to give shell access to my Linux students and the most easy way
is by using shellinabox. They can also install Linux at home, but still
it is more fun when you use Linux in a multi-user environment. It is also
easier for me to assign and evaluate homeworks.


## Installation

  - First install `ds` and `wsproxy`:
     + https://github.com/docker-scripts/ds#installation
     + https://github.com/docker-scripts/wsproxy#installation

  - Then get the shellinabox scripts from github:
    ```
    git clone https://github.com/docker-scripts/shellinabox /usr/local/src/shellinabox
    ```

  - Create a working directory for the shellinabox container:
    ```
    mkdir -p /var/containers/shell1
    cd /var/containers/shell1/
    ```

  - Initialize and fix the settings:
    ```
    ds init /usr/local/src/shellinabox
    vim settings.sh
    ds info
    ```

  - Build image, create the container and configure it:
    ```
    ds build
    ds create
    ds config
    ```

  - Tell `wsproxy` that the domain `shell1.example.org` is served by the container `shell1`:
    ```
    cd /var/container/wsproxy/
    ds domains-add shell1 shell1.example.org
    ds reload
    ```

  - If the domain is not a real one, add to `/etc/hosts` the line
    `127.0.0.1 shell1.example.org` and then try
    https://shell1.example.org in browser.


## Usage

  - Other DS commands:
    ```
    ds shell
    ds stop
    ds start
    ds snapshot
    ```
