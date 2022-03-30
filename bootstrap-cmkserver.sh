#!/usr/bin/env bash

sudo yum update -y
sudo yum upgrade -y
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
sudo yum-config-manager --enable rhel-7-server-optional-rpms -y
sudo yum-config-manager --enable rhel-7-server-extras-rpms -y
sudo setenforce 0
sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
sudo yum install wget -y
#sudo subscription-manager repos --enable rhel-7-server-optional-rpms -y
#sudo subscription-manager repos --enable rhel-7-server-extras-rpms
#sudo setsebool -P httpd_can_network_connect 1
#sudo firewall-cmd --zone=public --add-service=http --permanent
#sudo firewall-cmd --reload
sudo yum install /vagrant/check-mk-free-*.rpm -y
sudo omd create $(hostname -s) | tee /vagrant/install_$(hostname -s).log
sudo omd start $(hostname -s)