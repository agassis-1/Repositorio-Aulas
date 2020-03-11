#!/bin/bash 

site=$1

touch /etc/apache2/sites-available/$site.conf
mkdir /var/www/$site
touch /var/www/$site/index.html

echo "
	<VirtualHost *:80>
	ServerName www.$site.com.br
	DocumentRoot /var/www/$site
	</VirtualHost> 
" >> /etc/apache2/sites-available/$site.conf

     systemctl reload apache2

     a2ensite $site.conf

     systemctl reload apache2

     a2ensite $site.conf
echo "
<html>
<body bgcolor=black>

<font face=\"arial\" size=40 color=white > </br>
			Site do $site   </br>
</font>
</br>

</body>
</html>
" >> /var/www/$site/index.html

 
