shellinabox
===========

I need to give shell access to my Linux students and the most easy way
is by using shellinabox. They can also install Linux at home, but still
it is more fun when you use Linux in a multi-user environment. It is also
easier for me to assign and evaluate homeworks.


## Install

  - First install `ds` and `wsproxy`:
     + https://github.com/docker-scripts/ds#installation
     + https://github.com/docker-scripts/wsproxy#installation

  - Then get the shellinabox scripts from github: `ds pull shellinabox`

  - Create a directory for the shellinabox container: `ds init shellinabox @shell1`

  - Fix the settings: `cd /var/ds/shell1/; vim settings.sh`


  - Build image, create the container and configure it: `ds make`


## Access the website

  - Tell `wsproxy` to manage the domain of this container: `ds wsproxy add`

  - Tell `wsproxy` to get a free letsencrypt.org SSL certificate for this domain (if it is a real one):
    ```
    ds wsproxy ssl-cert --test
    ds wsproxy ssl-cert
    ```

 - If the domain is not a real one, add to `/etc/hosts` the line
    `127.0.0.1 shell1.example.org` and then try
    https://shell1.example.org in browser.


## Other commands

```
ds shell
ds stop
ds start
ds snapshot

ds help
```
