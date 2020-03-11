#!/bin/bash
$2=$1|cut 
for dominio in $(cat $1)

do
		./criarDominio.sh $1
		./criarSite.sh $1
done
