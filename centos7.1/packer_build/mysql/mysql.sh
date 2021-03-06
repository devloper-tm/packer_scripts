wget http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
rpm -Uvh mysql-community-release-el7-5.noarch.rpm
yum -y install mysql-community-server

sudo -u mysql mysql_install_db

systemctl start mysqld.service
systemctl enable mysqld.service

/usr/bin/mysqladmin -u root password $MYSQL_ROOT_PASSWORD
