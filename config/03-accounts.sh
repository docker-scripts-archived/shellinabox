#!/bin/bash
### Create accounts for all the students.
### The file accounts.txt contains a list of usernames and passwords
### separated by column (:).

addgroup student
while read line
do
    user=$(echo $line | cut -f1 -d:)
    pass=$(echo $line | cut -f2 -d:)
    echo $user:$pass
    useradd -d /home/$user -m -s /bin/bash -U  $user
    adduser $user student
    echo "$user:$pass" | chpasswd
    chmod o-r -R /home/$user/
done < /host/accounts.txt
