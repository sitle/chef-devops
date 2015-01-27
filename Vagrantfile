# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = 'devops'
  config.omnibus.chef_version = '11.16.4'
  config.vm.box = 'debian-7-chef'
  config.vm.network :private_network, ip: '172.28.128.3'
  config.berkshelf.enabled = true
  
  config.cache.auto_detect = true
  config.cache.scope = :box
  
  c.hostmanager.enabled = true
  c.hostmanager.manage_host = true
  c.hostmanager.ignore_private_ip = false
  c.hostmanager.include_offline = true
  c.hostmanager.aliases = %w(local.dev devops.dev)

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      mysql: {
        server_root_password: 'rootpass',
        server_debian_password: 'debpass',
        server_repl_password: 'replpass'
      }
    }

    chef.run_list = [
      'recipe[apt::default]',
      'recipe[devops::default]'
    ]
  end
end
