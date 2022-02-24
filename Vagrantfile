# -*- mode: ruby -*-
# vi: set ft=ruby :

if Vagrant::Util::Platform.windows?
  cmkservers=[
    {
      :hostname => "central",
      :ip => "192.168.10.14",
      :box => "centos/7",
<<<<<<< HEAD
      :ram => 1536,
      :cpu => 1
=======
      :ram => 2048,
      :cpu => 2,
      :bootstrap => "bootstrap-cmkserver.sh"
>>>>>>> 080737107d0ba9cb4b467d2a0d36c3e66d0fe043
    },
    {
      :hostname => "remote1",
      :ip => "192.168.10.15",
      :box => "centos/7",
<<<<<<< HEAD
      :ram => 1024,
      :cpu => 1
=======
      :ram => 2048,
      :cpu => 1,
      :bootstrap => "bootstrap-cmkserver.sh"
>>>>>>> 080737107d0ba9cb4b467d2a0d36c3e66d0fe043
    }
  ]

  cmklnxnodes=[
    {
      :hostname => "node01",
      :ip => "192.168.10.16",
      :box => "centos/7",
      :ram => 1024,
      :cpu => 1,
      :bootstrap => "bootstrap-cmklinuxnode.sh"
    }
  ]

  cmkwinnodes=[
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
  cmkservers=[
    {
      :hostname => "central",
      :ip => "192.168.56.14",
      :box => "centos/7",
<<<<<<< HEAD
      :ram => 1536,
      :cpu => 1
=======
      :ram => 2048,
      :cpu => 2,
      :bootstrap => "bootstrap-cmkserver.sh"
>>>>>>> 080737107d0ba9cb4b467d2a0d36c3e66d0fe043
    },
    {
      :hostname => "remote1",
      :ip => "192.168.56.15",
      :box => "centos/7",
<<<<<<< HEAD
      :ram => 1024,
      :cpu => 1
=======
      :ram => 2048,
      :cpu => 1,
      :bootstrap => "bootstrap-cmkserver.sh"
>>>>>>> 080737107d0ba9cb4b467d2a0d36c3e66d0fe043
    }
  ]

  cmklnxnodes=[
    {
      :hostname => "node01",
      :ip => "192.168.56.16",
      :box => "centos/7",
      :ram => 1024,
      :cpu => 1,
      :bootstrap => "bootstrap-cmklinuxnode.sh"
    }
  ]

  cmkwinnodes=[
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
  cmklnxnodes.each do |machine|
    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
      node.vm.network "private_network", ip: machine[:ip]
<<<<<<< HEAD
=======
      node.vm.provision "shell", path: machine[:bootstrap]
>>>>>>> 080737107d0ba9cb4b467d2a0d36c3e66d0fe043
      node.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.memory = machine[:ram]
        vb.cpus = machine[:cpu]
<<<<<<< HEAD
=======
        #config.vm.provision "shell", path: machine[:bootstrap]
>>>>>>> 080737107d0ba9cb4b467d2a0d36c3e66d0fe043
      end
    #config.vm.provision "shell", path: "bootstrap-cmklinuxnode.sh"
    end
  end
  #config.vm.provision "shell", path: "bootstrap-cmklinuxnode.sh"
end

Vagrant.configure(2) do |config|
  cmkwinnodes.each do |machine|
    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
      node.vm.network "private_network", ip: machine[:ip]
<<<<<<< HEAD
=======
      node.vm.provision "shell", path: machine[:bootstrap]
>>>>>>> 080737107d0ba9cb4b467d2a0d36c3e66d0fe043
      node.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.memory = machine[:ram]
        vb.cpus = machine[:cpu]
<<<<<<< HEAD
=======
        #config.vm.provision "shell", path: machine[:bootstrap]
>>>>>>> 080737107d0ba9cb4b467d2a0d36c3e66d0fe043
      end
    #config.vm.provision "shell", path: "bootstrap-cmkwinnode.ps1"
    end
  end
  #config.vm.provision "shell", path: "bootstrap-cmkwinnode.ps1"
end

Vagrant.configure(2) do |config|
  cmkservers.each do |machine|
    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
      node.vm.network "private_network", ip: machine[:ip]
      node.vm.provision "shell", path: machine[:bootstrap]
      node.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.memory = machine[:ram]
        vb.cpus = machine[:cpu]
        #config.vm.provision "shell", path: machine[:bootstrap]
      end
    #config.vm.provision "shell", path: "bootstrap-cmkserver.sh"
    end
  end
  #config.vm.provision "shell", path: "bootstrap-cmkserver.sh"
end
