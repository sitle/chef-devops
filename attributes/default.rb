
# Chef software
#
default['devops']['chef_server']['version'] = '11.1.6-1'
default['devops']['chef_client']['version'] = '11.16.4-1'

default['devops']['ubuntu']['chef_server_pkg'] = 'chef-server_11.1.6-1_amd64.deb'
default['devops']['ubuntu']['chef_server_link'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.1.6-1_amd64.deb'
default['devops']['rhel']['chef_server_pkg'] = 'chef-server-11.1.6-1.el6.x86_64.rpm'
default['devops']['rhel']['chef_server_link'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chef-server-11.1.6-1.el6.x86_64.rpm'

default['devops']['ubuntu']['chef_client_pkg'] = 'chef_11.16.4-1_amd64.deb'
default['devops']['ubuntu']['chef_client_link'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/13.04/x86_64/chef_11.16.4-1_amd64.deb'
default['devops']['ubuntu']['chefdk_pkg'] = 'chefdk-ubuntu.deb'
default['devops']['ubuntu']['chefdk_link'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.3.6-1_amd64.deb'

default['devops']['rhel']['chef_client_pkg'] = 'chef-11.16.4-1.el6.x86_64.rpm'
default['devops']['rhel']['chef_client_link'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chef-11.16.4-1.el6.x86_64.rpm'

default['devops']['debian']['chef_client_pkg'] = 'chef_11.16.4-1_amd64.deb'
default['devops']['debian']['chef_client_link'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/debian/6/x86_64/chef_11.16.4-1_amd64.deb'
default['devops']['debian']['chefdk_pkg'] = 'chefdk-debian.deb'
default['devops']['debian']['chefdk_link'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/debian/6/x86_64/chefdk_0.3.6-1_amd64.deb'

default['devops']['windows']['chef_client_pkg'] = 'chef-windows-11.16.4-1.windows.msi'
default['devops']['windows']['chef_client_link'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/windows/2008r2/x86_64/chef-windows-11.16.4-1.windows.msi'
default['devops']['windows']['chefdk_pkg'] = 'chefdk-windows.msi'
default['devops']['windows']['chefdk_link'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/windows/2008r2/x86_64/chefdk-0.3.6-1.msi'

default['devops']['osx']['chefdk_pkg'] = 'chefdk-osx.dmg'
default['devops']['osx']['chefdk_link'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.8/x86_64/chefdk-0.3.6-1.dmg'

# Virtualbox software
#
default['devops']['ubuntu']['virtualbox_pkg'] = 'virtualbox-ubuntu.deb'
default['devops']['ubuntu']['virtualbox_link'] = 'http://download.virtualbox.org/virtualbox/4.3.20/virtualbox-4.3_4.3.20-96996~Ubuntu~raring_amd64.deb'

default['devops']['debian']['virtualbox_pkg'] = 'virtualbox-debian.deb'
default['devops']['debian']['virtualbox_link'] = 'http://download.virtualbox.org/virtualbox/4.3.20/virtualbox-4.3_4.3.20-96996~Debian~wheezy_amd64.deb'

default['devops']['windows']['virtualbox_pkg'] = 'virtualbox-windows.exe'
default['devops']['windows']['virtualbox_link'] = 'http://download.virtualbox.org/virtualbox/4.3.20/VirtualBox-4.3.20-96997-Win.exe'

default['devops']['osx']['virtualbox_pkg'] = 'virtualbox-osx.dmg'
default['devops']['osx']['virtualbox_link'] = 'http://download.virtualbox.org/virtualbox/4.3.20/VirtualBox-4.3.20-96996-OSX.dmg'

# Domain definition
#
default['devops']['chef_domain'] = 'chef.repository.dev'
default['devops']['vagrant_domain'] = 'vagrant.repository.dev'
default['devops']['software_domain'] = 'software.repository.dev'
default['devops']['preseed_domain'] = 'preseed.repository.dev'
default['devops']['kickstart_domain'] = 'kickstart.repository.dev'
default['devops']['yum_rhel_domain'] = 'yum.rhel.repository.dev'
default['devops']['yum_oel_domain'] = 'yum.oel.repository.dev'
default['devops']['yum_centos_domain'] = 'yum.centos.repository.dev'
