# vagrant-CheckMK-platform-tutorial-centos7
CheckMK platform tutorial on centos7 and vagrant

https://loopbin.dev/tutos/lancer-plusieurs-machines-avec-vagrant/

## Create the servers.
wget https://github.com/duprefm/vagrant-CheckMK-platform-tutorial-centos7.git
cd vagrant-CheckMK-platform-tutorial-centos7
vagrant up
## https://docs.checkmk.com/latest/en/install_packages_redhat.html
## Prepare infrastructure servers.
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum-config-manager --enable rhel-7-server-optional-rpms
yum-config-manager --enable rhel-7-server-extras-rpms
subscription-manager repos --enable rhel-7-server-optional-rpms
subscription-manager repos --enable rhel-7-server-extras-rpms


setsebool -P httpd_can_network_connect 1
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --reload


## Install Check_MK server
yum install check-mk-free-2.0.0p20-el7-38.x86_64.rpm

## https://docs.checkmk.com/latest/en/checkmk_getting_started.html
# omd create centralsite

Created new site centralsite with version 2.0.0p20.cfe.

  The site can be started with omd start centralsite.
  The default web UI is available at http://central/centralsite/

  The admin user for the web applications is cmkadmin with password: 1mdALary
  For command line administration of the site, log in with 'omd su centralsite'.
  After logging in, you can change the password for cmkadmin with 'htpasswd etc/htpasswd cmkadmin'.

# omd start


## Install the agent on monitored servers
# yum install check-mk-agent-2.0.0p20-d81983d5b415497f.noarch.rpm -y

# /usr/lib/check_mk_agent/plugins/3600/cmk-update-agent register -vvv -s [central server ip] -i [central server site name] -p http -H [monitored server name] -U cmkadmin -P [password for cmkadmin user]

# /usr/lib/check_mk_agent/plugins/3600/cmk-update-agent -v

## https://docs.checkmk.com/latest/en/distributed_monitoring.html
## Install Check_MK remote server
yum install check-mk-free-2.0.0p20-el7-38.x86_64.rpm

omd create remote1

Created new site remote1 with version 2.0.0p20.cfe.

  The site can be started with omd start remote1.
  The default web UI is available at http://remote1/remote1/

  The admin user for the web applications is cmkadmin with password: HPISCcMP
  For command line administration of the site, log in with 'omd su remote1'.
  After logging in, you can change the password for cmkadmin with 'htpasswd etc/htpasswd cmkadmin'.

omd start remote1
omd su remote1

omd config
