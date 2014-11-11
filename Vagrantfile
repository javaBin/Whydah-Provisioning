hosts = {
  "ldap" => "192.168.99.5"
}

Vagrant.configure("2") do |config|  
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/20140507/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  
  hosts.each do |name, ip|
    config.vm.define name do |machine|
      machine.vm.network :private_network, ip: ip
      machine.vm.hostname = "%s.java.no" % name
      machine.vm.provider "virtualbox" do |v|
          v.name = name
          v.customize ["modifyvm", :id, "--memory", 512]
      end
      machine.vm.provision :hostmanager
      machine.vm.provision "ansible" do |ansible|
        ansible.inventory_path = "vagrant-hosts"
        ansible.playbook = "provision-openldap.yml"
        ansible.verbose = "vvvv"
      end
    end
  end
end
