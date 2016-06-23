require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('tree') do
    it { should be_installed }
  end
  describe package('git') do
    it { should be_installed }
  end
#  describe package('cowsay') do
#    it { should be_installed }
#  end
  describe file('/etc/motd') do
    it { should be_file }
    its(:content) { should contain 'Property of smorenor' }
  end
#file '/etc/motd' do
#        content 'Property of smorenor'
#end

#  it 'does something' do
#    skip 'Replace this with meaningful tests'
#  end
end
