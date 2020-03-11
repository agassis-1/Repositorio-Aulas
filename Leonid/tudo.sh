#!/bin/bash
for dominio in $(cat $1)

do
ss=$2(echo $1 | cut -d. -f1)
		./criarDominio.sh $1
		./criarSite.sh ss
		./ciarftp.sh ss
done
