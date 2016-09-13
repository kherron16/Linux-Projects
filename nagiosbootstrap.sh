#!/bin/bash
yum install -y wget
yum install -y httpd
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum install -y mysql-server
systemctl enable httpd
systemctl enable mysqld
systemctl start httpd
systemctl start mysqld

