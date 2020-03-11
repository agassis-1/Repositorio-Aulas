#!/bin/bash

ss=$1

#dominio
rm -rf "/etc/bind/db.$ss.com.br"

#site
rm -rf "/etc/apache2/sites-available/$ss"
rm -rf "/var/www/$ss"

#ftp
deluser $ss -shell /bin/false -home /home/$ss
deluser $ss userftp
