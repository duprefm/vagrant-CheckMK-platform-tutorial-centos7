# -*- mode: ruby -*-
# vi: set ft=ruby :

machines=[
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
  },
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
    machines.each do |machine|
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
end