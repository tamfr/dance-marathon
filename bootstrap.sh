#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
apt-get install php5 libapache2-mod-php5 -y

if [ ! -h /var/www ]; 
then 

    rm -rf /var/www sudo 
    ln -fs /vagrant /var/www

    a2enmod rewrite

    sed -i '/AllowOverride None/c AllowOverride All' /etc/apache2/sites-available/default

    service apache2 restart
fi