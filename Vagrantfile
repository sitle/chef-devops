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
      devops: {
        chef_domain: 'chef.repository.dev',
        vagrant_domain: 'vagrant.repository.dev',
        software_domain: 'software.repository.dev',
        preseed_domain: 'preseed.repository.dev',
        kickstart_domain: 'kickstart.repository.dev',
        yum_rhel_domain: 'yum.rhel.repository.dev',
        yum_oel_domain: 'yum.oel.repository.dev',
        yum_centos_domain: 'yum.centos.repository.dev'
      }
    }

    chef.run_list = [
      'recipe[apt::default]',
      'recipe[devops::default]'
    ]
  end
end
