#
# Cookbook Name:: devops
# Recipe:: default
#
# Copyright (C) 2015 Leonard TAVAE
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Install reprepro package

package 'reprepro' do
  action :install
end

# Create directories for chef repositories
#
directory '/var/www/chef/server/ubuntu' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

directory '/var/www/chef/server/rhel' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

directory '/var/www/chef/client/ubuntu' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

directory '/var/www/chef/client/debian' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

directory '/var/www/chef/client/rhel' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

directory '/var/www/chef/client/windows' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

# Get chef-server package
#
remote_file '/var/www/chef/server/ubuntu/' + node['devops']['ubuntu']['chef_server_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['ubuntu']['chef_server_link']
  not_if { ::File.exist?('/var/www/chef/server/ubuntu/' + node['devops']['ubuntu']['chef_server_pkg']) }
end

remote_file '/var/www/chef/server/rhel/' + node['devops']['rhel']['chef_server_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['rhel']['chef_server_link']
  not_if { ::File.exist?('/var/www/chef/server/rhel/' + node['devops']['rhel']['chef_server_pkg']) }
end

# Get chef-client package for ubuntu/debian/rhel
#
remote_file '/var/www/chef/client/ubuntu/' + node['devops']['ubuntu']['chef_client_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['ubuntu']['chef_client_link']
  not_if { ::File.exist?('/var/www/chef/client/ubuntu/' + node['devops']['ubuntu']['chef_client_pkg']) }
end

remote_file '/var/www/chef/client/rhel/' + node['devops']['rhel']['chef_client_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['rhel']['chef_client_link']
  not_if { ::File.exist?('/var/www/chef/client/rhel/' + node['devops']['rhel']['chef_client_pkg']) }
end

remote_file '/var/www/chef/client/debian/' + node['devops']['debian']['chef_client_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['debian']['chef_client_link']
  not_if { ::File.exist?('/var/www/chef/client/debian/' + node['devops']['debian']['chef_client_pkg']) }
end

remote_file '/var/www/chef/client/windows/' + node['devops']['windows']['chef_client_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['windows']['chef_client_link']
  not_if { ::File.exist?('/var/www/chef/client/windows/' + node['devops']['windows']['chef_client_pkg']) }
end

# Create repository directory for vagrant box
#
directory '/var/www/vagrant' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

# Create repository directory for software
#
directory '/var/www/software' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

remote_file '/var/www/software/' + node['devops']['ubuntu']['virtualbox_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['ubuntu']['virtualbox_link']
  not_if { ::File.exist?('/var/www/software/' + node['devops']['ubuntu']['virtualbox_pkg']) }
end

remote_file '/var/www/software/' + node['devops']['debian']['virtualbox_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['debian']['virtualbox_link']
  not_if { ::File.exist?('/var/www/software/' + node['devops']['debian']['virtualbox_pkg']) }
end

remote_file '/var/www/software/' + node['devops']['windows']['virtualbox_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['windows']['virtualbox_link']
  not_if { ::File.exist?('/var/www/software/' + node['devops']['windows']['virtualbox_pkg']) }
end

remote_file '/var/www/software/' + node['devops']['osx']['virtualbox_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['osx']['virtualbox_link']
  not_if { ::File.exist?('/var/www/software/' + node['devops']['osx']['virtualbox_pkg']) }
end

remote_file '/var/www/software/' + node['devops']['ubuntu']['chefdk_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['ubuntu']['chefdk_link']
  not_if { ::File.exist?('/var/www/software/' + node['devops']['ubuntu']['chefdk_pkg']) }
end

remote_file '/var/www/software/' + node['devops']['debian']['chefdk_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['debian']['chefdk_link']
  not_if { ::File.exist?('/var/www/software/' + node['devops']['debian']['chefdk_pkg']) }
end

remote_file '/var/www/software/' + node['devops']['windows']['chefdk_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['windows']['chefdk_link']
  not_if { ::File.exist?('/var/www/software/' + node['devops']['windows']['chefdk_pkg']) }
end

remote_file '/var/www/software/' + node['devops']['osx']['chefdk_pkg'] do
  owner 'www-data'
  group 'www-data'
  mode '0644'
  source node['devops']['osx']['chefdk_link']
  not_if { ::File.exist?('/var/www/software/' + node['devops']['osx']['chefdk_pkg']) }
end

# Create ISO directory for packer
#
directory '/var/www/iso' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

# Create repository directory for preseed files (ubuntu/debian)
#
directory '/var/www/preseed/debian' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

directory '/var/www/preseed/ubuntu' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

# Create repository directory for kickstart files (rhel/oel/centos)
#
directory '/var/www/kickstart/rhel' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

# Create repository directory for rhel
#
directory '/var/www/yum/rhel' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

# Create repository directory for oel
#
directory '/var/www/yum/oel' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

# Create repository directory for centos
#
directory '/var/www/yum/centos' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
  action :create
end

# Configure virtualhost for all
#
web_app 'chef' do
  server_name node['devops']['chef_domain']
  template 'chef.conf.erb'
  docroot '/var/www/chef'
  cookbook 'devops'
end

web_app 'iso' do
  server_name node['devops']['iso_domain']
  template 'iso.conf.erb'
  docroot '/var/www/iso'
  cookbook 'devops'
end

web_app 'vagrant' do
  server_name node['devops']['vagrant_domain']
  template 'vagrant.conf.erb'
  docroot '/var/www/vagrant'
  cookbook 'devops'
end

web_app 'software' do
  server_name node['devops']['software_domain']
  template 'software.conf.erb'
  docroot '/var/www/software'
  cookbook 'devops'
end

web_app 'preseed' do
  server_name node['devops']['preseed_domain']
  template 'preseed.conf.erb'
  docroot '/var/www/preseed'
  cookbook 'devops'
end

web_app 'kickstart' do
  server_name node['devops']['kickstart_domain']
  template 'kickstart.conf.erb'
  docroot '/var/www/kickstart'
  cookbook 'devops'
end

web_app 'yum-rhel' do
  server_name node['devops']['yum_rhel_domain']
  template 'yum-rhel.conf.erb'
  docroot '/var/www/yum/rhel'
  cookbook 'devops'
end

web_app 'yum-oel' do
  server_name node['devops']['yum_oel_domain']
  template 'yum-oel.conf.erb'
  docroot '/var/www/yum/oel'
  cookbook 'devops'
end

web_app 'yum-centos' do
  server_name node['devops']['yum_centos_domain']
  template 'yum-centos.conf.erb'
  docroot '/var/www/yum/centos'
  cookbook 'devops'
end
