#/bin/bash

# Create /var/www/apt-mirror
mkdir /var/www/apt-mirror

# Symlink /var/spool/apt-mirror to /var/www/apt-mirror
ln -s 

# Make sure the default apache vhost points to /var/www/apt-mirror
sed -i 's/\(\/var\/www\/\)\(.*\)/\1apt-mirror/' /etc/apache2/sites-available/000-default.conf


