#!/bin/bash

dominio=$(echo $1 | cut -d. -f1)
useradd $dominio -p $(openssl passwd '123') -d /var/www/$1

add user $dominio userftp 

systemctl restart proftpd
