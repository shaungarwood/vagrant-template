Vagrant.configure("2") do |config|
  config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "/home/vagrant/.ssh/id_rsa"
  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"

  $script = <<-SCRIPT
  wget shaungarwood.com/bs.sh
  bash bs.sh
  ansible-playbook ~/my_bootstraps/tasks/*.yml
  SCRIPT

  config.vm.provision "shell", inline: $script, privileged: false

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "bento/ubuntu-18.04"
    ubuntu.vm.hostname = "ubuntu"
  end

#   config.vm.define "centos" do |centos|
#     centos.vm.box = "bento/centos-7.2"
#     centos.vm.hostname = "centos"
#   end
end
```
