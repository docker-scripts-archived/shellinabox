APP=shellinabox

### Docker settings.
IMAGE=shellinabox
CONTAINER=shell1-example-org
#PORTS="443:443"   ## port to access shellinabox if it is standalone
PORTS=    ## no port when it is behind wsproxy

### domain of the site
DOMAIN="shell1.example.org"

### Gmail account for server notifications (through ssmtp).
### Make sure to enable less-secure-apps:
### https://support.google.com/accounts/answer/6010255?hl=en
GMAIL_ADDRESS=
GMAIL_PASSWD=
