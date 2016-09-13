#!/bin/bash
#install wget
yum install -y wget

#install apache
yum install -y httpd

#get mysql image
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm

#manage mysql packet
rpm -ivh mysql-community-release-el7-5.noarch.rpm

#install mysql
yum install -y mysql-server

#enable apache, mysql to run on start, and start processes
systemctl enable httpd
systemctl enable mysqld
systemctl start httpd
systemctl start mysqld

