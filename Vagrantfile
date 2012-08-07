# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "new-base"
  config.vm.customize ["modifyvm", :id, "--name", "Haskell with Yesod", "--memory", "769"]
  config.vm.forward_port 3000, 3000
  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "fixie"
    chef.add_recipe "yesod"

    chef.json = {
      :node_hostname => "yesod.dev"
    }
  end
end
