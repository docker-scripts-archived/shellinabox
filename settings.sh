APP=shellinabox

### Docker settings.
IMAGE=shellinabox
CONTAINER=shell1-example-org
#PORTS="443:443"   ## port to access shellinabox if it is standalone
PORTS=    ## no port when it is behind wsproxy

### domain of the site
DOMAIN="shell1.example.org"

### Gmail account for notifications. This will be used by ssmtp.
### You need to create an application specific password for your account:
### https://www.lifewire.com/get-a-password-to-access-gmail-by-pop-imap-2-1171882
GMAIL_ADDRESS=
GMAIL_PASSWD=
