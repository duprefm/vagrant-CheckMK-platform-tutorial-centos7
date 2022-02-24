# -*- mode: ruby -*-
# vi: set ft=ruby :

if Vagrant::Util::Platform.windows?
  ploatformservers=[
    {
      :hostname => "central",
      :ip => "192.168.10.14",
      :box => "centos/7",
      :ram => 2048,
      :cpu => 1,
      :bootstrap => "bootstrap-cmkserver.sh"
    },
    {
      :hostname => "remote1",
      :ip => "192.168.10.15",
      :box => "centos/7",
      :ram => 1024,
      :cpu => 1,
      :bootstrap => "bootstrap-cmkserver.sh"
    },
    {
      :hostname => "node01",
      :ip => "192.168.10.16",
      :box => "centos/7",
      :ram => 1024,
      :cpu => 1,
      :bootstrap => "bootstrap-cmklinuxnode.sh"
    },
    {
      :hostname => "node02",
      :ip => "192.168.10.17",
      :box => "gusztavvargadr/windows-server-2016-standard",
      :ram => 2048,
      :cpu => 1,
      :bootstrap => "bootstrap-cmkwinnode.ps1"
    }
  ]
else
  ploatformservers=[
    {
      :hostname => "central",
      :ip => "192.168.56.14",
      :box => "centos/7",
      :ram => 2048,
      :cpu => 1,
      :bootstrap => "bootstrap-cmkserver.sh"
    },
    {
      :hostname => "remote1",
      :ip => "192.168.56.15",
      :box => "centos/7",
      :ram => 1024,
      :cpu => 1,
      :bootstrap => "bootstrap-cmkserver.sh"
    },
    {
      :hostname => "node01",
      :ip => "192.168.56.16",
      :box => "centos/7",
      :ram => 1024,
      :cpu => 1,
      :bootstrap => "bootstrap-cmklinuxnode.sh"
    },
    {
      :hostname => "node02",
      :ip => "192.168.56.17",
      :box => "gusztavvargadr/windows-server-2016-standard",
      :ram => 2048,
      :cpu => 1,
      :bootstrap => "bootstrap-cmkwinnode.ps1"
    }
  ]
end

Vagrant.configure(2) do |config|
  ploatformservers.each do |machine|
    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
      node.vm.network "private_network", ip: machine[:ip]
      node.vm.provision "shell", path: machine[:bootstrap]
      node.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.memory = machine[:ram]
        vb.cpus = machine[:cpu]
      end
    end
  end
end
