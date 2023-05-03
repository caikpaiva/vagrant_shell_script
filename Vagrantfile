Vagrant.configure("2") do |config|
  config.vm.provider:virtualbox do |vbox|
    vbox.name = "Ubuntu"
  end
    
  config.vm.define "ubuntu" do |ubu|
    ubu.vm.box = "generic/ubuntu2004"
    ubu.vm.network "public_network"
    ubu.vm.provision "shell", path: "script.sh"
  end
end
