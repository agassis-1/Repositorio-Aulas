#!/bin/bash

ss=$1

rm -rf "/etc/bind/db.$ss.com.br"
rm -rf "/etc/apache2/sites-available/$ss"
rm -rf "/var/www/$ss"

deluser $ss -shell /bin/false -home /home/$ss
deluser $ss userftp
