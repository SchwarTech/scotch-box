#!/usr/bin/env bash
# Description: Script file to update the mongodb binding address
#              in the configuration file from localhost to 0.0.0.0
# Author: Jeff Schwartz(jeff@schwartech.com)
# Created Date: 11-16-2016

echo "Updating MongoDB configuration..."
sudo cp -f /var/www/bin/mongod.conf /etc

echo "Restart mongod..."
# restart apache2
sudo service mongod restart
