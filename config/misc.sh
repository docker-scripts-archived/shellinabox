#!/bin/bash -x
### other customizations

source /host/settings.sh

### disable ubuntu-server-tips
chmod -x /etc/update-motd.d/60-ubuntu-server-tip

### display a banner on login
hostname | figlet > /etc/banner.txt
sed -i /etc/profile -e '/^### custom/,$ d'
cat <<EOF > /etc/profile
### custom
cat /etc/banner.txt
fortune 30% fortunes 70% ubuntu-server-tips | pv -qL 10
echo
EOF

### place some limits
sed -i /etc/security/limits.conf -e '/^### custom/,$ d'
cat <<EOF >> /etc/security/limits.conf
### custom
@student        hard    nproc           1000
*               hard    core            0
@noroot         hard    date            102400
@student        hard    cpu             2
@student        hard    maxlogins       1
EOF
