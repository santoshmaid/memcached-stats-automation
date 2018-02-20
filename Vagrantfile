Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "web-01"
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 443, host: 8443, host_ip: "127.0.0.1"
  config.vm.network :private_network, ip: "192.168.111.222"
  config.ssh.insert_key = false
  config.vm.provision "ansible_local" do |ansible|
    compatibility_mode = "2.0"
    ansible.playbook = "provisioning/playbook.yml"
  end
end
