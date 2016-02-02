

apt-get update
apt-get install -y apache2 apache2-doc apache2-utils
apt-get install debconf-utils -y > /dev/null
debconf-set-selections <<< "mysql-server mysql-server/root_password password 1234"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 1234"
apt-get install mysql-server -y > /dev/null
apt-get install install php5-cli
apt-get update
add-apt-repository ppa:ondrej/php
apt-get update
apt-get install -y php7.0
apt-get install -y php7.0-mysql
apt-get update
apt-get -y upgrade
if ! [ -L /var/www ]; then
		rm -rf /var/www
		ln -fs /vagrant /var/www
fi