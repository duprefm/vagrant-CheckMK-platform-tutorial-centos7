# -*- mode: ruby -*-
# vi: set ft=ruby :

cmkservers=[
  {
    :hostname => "central",
    :ip => "192.168.10.14",
    :box => "centos/7",
    :ram => 1024,
    :cpu => 1
  },
  {
    :hostname => "remote1",
    :ip => "192.168.10.15",
    :box => "centos/7",
    :ram => 1024,
    :cpu => 1
  }
]

cmknodes=[
  {
    :hostname => "node01",
    :ip => "192.168.10.16",
    :box => "centos/7",
    :ram => 512,
    :cpu => 1
  },
  {
    :hostname => "node02",
    :ip => "192.168.10.17",
    :box => "centos/7",
    :ram => 512,
    :cpu => 1
  }
]

Vagrant.configure(2) do |config|
    cmknodes.each do |machine|
        config.vm.define machine[:hostname] do |node|
            node.vm.box = machine[:box]
            node.vm.hostname = machine[:hostname]
            node.vm.network "private_network", ip: machine[:ip]
            node.vm.provider "virtualbox" do |vb|
				vb.gui = false
				vb.memory = machine[:ram]
				vb.cpus = machine[:cpu]
            end
        end
    end
    config.vm.provision "shell", inline: <<-SHELL
    sudo yum update -y
    sudo yum upgrade -y
  SHELL
end

Vagrant.configure(2) do |config|
  cmkservers.each do |machine|
      config.vm.define machine[:hostname] do |node|
          node.vm.box = machine[:box]
          node.vm.hostname = machine[:hostname]
          node.vm.network "private_network", ip: machine[:ip]
          node.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = machine[:ram]
      vb.cpus = machine[:cpu]
          end
      end
  end
  config.vm.provision "shell", inline: <<-SHELL
    sudo yum update -y
    sudo yum upgrade -y
    sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
    sudo yum-config-manager --enable rhel-7-server-optional-rpms -y
    sudo yum-config-manager --enable rhel-7-server-extras-rpms -y
    sudo subscription-manager repos --enable rhel-7-server-optional-rpms -y
    sudo subscription-manager repos --enable rhel-7-server-extras-rpms
    sudo setsebool -P httpd_can_network_connect 1
    sudo firewall-cmd --zone=public --add-service=http --permanent
    sudo firewall-cmd --reload
    sudo wget https://checkmk.com/support/Check_MK-pubkey.gpg | apt-key -add -
    sudo omd create site
    sudo omd start site
    echo
    ip=$(ip -o a s eth1 | grep /2 | awk '{print $4}' | cut -d/ -f 1)
    echo "In your browser, go to:"
    echo " - http://${ip}/site/"
    echo
    echo "Default credentials are => omdadmin:omd"
    echo
    echo "Happy monitoring!"
  SHELL
end