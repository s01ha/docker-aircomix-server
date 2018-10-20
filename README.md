# AirComix Server (PHP version) for Docker

Volume
/comics : root directory of comics


Port
31257 : service port

Default account
Username: AirComix
Password: y0urp@ssw0rd

How to change default password
1. Connect to SSH
2. Run command
$ docker exec <your-container-name> /bin/sh -c 'htpasswd -cb /var/www/comix-server/.htpasswd AirComix <your-password>'
