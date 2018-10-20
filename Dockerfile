FROM webdevops/php-apache:5.6
MAINTAINER amoros@gmail.com

# Arguments and environmental variables
ARG AIRCOMIX_PASSWORD=y0urp@ssw0rd

# Run
RUN \
wget -O /root/master.zip https://github.com/hasol81/comix-server/archive/master.zip -q && \
unzip -qq /root/master.zip -d /root && \
mkdir -p /var/www/comix-server && \
cp -a /root/comix-server-master/*.php /var/www/comix-server/ && \
cp -a /root/comix-server-master/conf/httpd.conf-comix /etc/apache2/sites-enabled/aircomix_vhost.conf && \
cp -a /root/comix-server-master/conf/htaccess /var/www/comix-server/.htaccess && \
rm -rf /root/comix-server-master && \
htpasswd -cb /var/www/comix-server/.htpasswd AirComix "${AIRCOMIX_PASSWORD}" && \
chown www-data:www-data /var/www/comix-server/.ht*

# Volume
VOLUME /comics

# Expose
EXPOSE 31257
