require 'serverspec'

set :backend, :exec

describe 'Apache configuration' do
  it 'has a file named chef.conf' do
    expect(file('/etc/apache2/sites-available/chef.conf')).to be_a_file
  end
  it 'has a file named chef.conf enable' do
    expect(file('/etc/apache2/sites-enabled/chef.conf')).to be_a_symlink
  end
  it 'has a file named kickstart.conf' do
    expect(file('/etc/apache2/sites-available/kickstart.conf')).to be_a_file
  end
  it 'has a file named kickstart.conf enable' do
    expect(file('/etc/apache2/sites-enabled/kickstart.conf')).to be_a_symlink
  end
  it 'has a file named preseed.conf' do
    expect(file('/etc/apache2/sites-available/preseed.conf')).to be_a_file
  end
  it 'has a file named preseed.conf enable' do
    expect(file('/etc/apache2/sites-enabled/preseed.conf')).to be_a_symlink
  end
  it 'has a file named software.conf' do
    expect(file('/etc/apache2/sites-available/software.conf')).to be_a_file
  end
  it 'has a file named software.conf enable' do
    expect(file('/etc/apache2/sites-enabled/software.conf')).to be_a_symlink
  end
  it 'has a file named vagrant.conf' do
    expect(file('/etc/apache2/sites-available/vagrant.conf')).to be_a_file
  end
  it 'has a file named vagrant.conf enable' do
    expect(file('/etc/apache2/sites-enabled/vagrant.conf')).to be_a_symlink
  end
  it 'has a file named yum-centos.conf' do
    expect(file('/etc/apache2/sites-available/yum-centos.conf')).to be_a_file
  end
  it 'has a file named yum-centos.conf enable' do
    expect(file('/etc/apache2/sites-enabled/yum-centos.conf')).to be_a_symlink
  end
  it 'has a file named yum-oel.conf' do
    expect(file('/etc/apache2/sites-available/yum-oel.conf')).to be_a_file
  end
  it 'has a file named yum-oel.conf enable' do
    expect(file('/etc/apache2/sites-enabled/yum-oel.conf')).to be_a_symlink
  end
  it 'has a file named yum-rhel.conf' do
    expect(file('/etc/apache2/sites-available/yum-rhel.conf')).to be_a_file
  end
  it 'has a file named yum-rhel.conf enable' do
    expect(file('/etc/apache2/sites-enabled/yum-rhel.conf')).to be_a_symlink
  end
  it 'has a root directory in /var/www/chef' do
    expect(file('/var/www/chef')).to be_a_directory
  end
  it 'has a root directory in /var/www/vagrant' do
    expect(file('/var/www/vagrant')).to be_a_directory
  end
  it 'has a root directory in /var/www/preseed' do
    expect(file('/var/www/preseed')).to be_a_directory
  end
  it 'has a root directory in /var/www/kickstart' do
    expect(file('/var/www/kickstart')).to be_a_directory
  end
  it 'has a root directory in /var/www/yum/rhel' do
    expect(file('/var/www/yum/rhel')).to be_a_directory
  end
  it 'has a root directory in /var/www/yum/oel' do
    expect(file('/var/www/yum/oel')).to be_a_directory
  end
  it 'has a root directory in /var/www/yum/centos' do
    expect(file('/var/www/yum/centos')).to be_a_directory
  end
end
