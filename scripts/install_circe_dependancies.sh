# Install dependencies

echo 'Installing default-jre...'
apt-get -y install default-jre

echo 'Installing php5-intl...'
apt-get -y install php5-intl

echo 'Installing php7-ldap...'
apt-get -y install php7.0-ldap

echo 'Installing php-codesniffer...'
apt-get -y install php-codesniffer

echo 'Installing node.js...'
apt-get -y install nodejs

echo 'Installing bootlint...'
npm install -g bootlint

echo 'Installing jshint...'
npm install -g jshint

echo 'Installing jscs...'
npm install jscs -g

echo '...done.'

#echo '...attempting to do php artisan migrate:refresh --seed...'
#cd /home/vagrant/Code/circe
#php artisan migrate:refresh --seed
#echo '...done.'

# ...and restart the nginx and PHP services
service nginx restart
service php5-fpm restart
