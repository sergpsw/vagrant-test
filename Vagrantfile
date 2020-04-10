Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.define "web" do |web|
    web.vm.box = "ubuntu/xenial64"
    web.vm.hostname = "webserv"
    web.vm.network "forwarded_port", guest: 80, host: 8000
    web.vm.network "forwarded_port", guest: 3306, host: 3308
    web.vm.network "private_network", ip: "192.168.88.81"
   
    web.vm.provider "virtualbox" do |vb|
      vb.name = "webserv"
      vb.cpus = 1
      vb.memory = "384"
    end

    web.vm.provision "shell", path: "script.sh"
    web.vm.synced_folder "/var/www/vagrant", "/var/www/vagrant"

  end

end
