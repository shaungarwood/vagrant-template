Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.hostname = "template"
  config.vm.provision :shell, path: "bootstrap.sh"
  # config.vm.network "forwarded_port", guest: 80, host: 8080
end
