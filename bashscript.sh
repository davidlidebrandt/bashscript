#!/bin/bash

#Uppdatera alla repositories till senaste versionerna
apt update

#Installera NGINX
apt install nginx -y

#Förflytta dig till mappen där NGINX hittar HTML filerna
cd /var/www/html

#Skapa en ny index HTML fil som sedan servas av NGINX
touch index.html
 
#Lägg till HTML kod till filen
tee -a index.html << EOF
<!DOCTYPE html>
<html>
<head>
<title>Welcome David!</title>
</head>
<body>
<h1>Welcome David!</h1>
</body>
</html>
EOF
