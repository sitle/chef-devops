require 'serverspec'

set :backend, :exec

describe 'Apache' do
  it 'package is installed' do
    expect(package('apache2')).to be_installed
  end
  it 'service is enable' do
    expect(service('apache2')).to be_enabled
  end
  it 'service is running' do
    expect(service('apache2')).to be_running
  end
  it 'is listening on port 80' do
    expect(port(80)).to be_listening
  end
end