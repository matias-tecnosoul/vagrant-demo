#!/usr/bin/env bash
apt update
apt install -y apache2

if ! [ -L /var/www/html ]; then
    rm -rf /var/www/html
    ln -fs /vagrant /var/www/html
fi
