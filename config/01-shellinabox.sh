#!/bin/bash
### customize shellinabox

### set the port to 443
sed -i /etc/default/shellinabox \
    -e "/^SHELLINABOX_PORT/c SHELLINABOX_PORT=443"

### make 'white on black' the default theme
cd /etc/shellinabox/options-available/
mv "00_White On Black.css" "00+White On Black.css"
mv "00+Black on White.css" "00_Black on White.css"
cd ../options-enabled/
rm 00*
ln -s "../options-available/00+White On Black.css" .

### restart
service shellinabox restart
