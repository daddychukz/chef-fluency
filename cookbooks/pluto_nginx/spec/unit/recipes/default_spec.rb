#
# Cookbook:: pluto_nginx
# Spec:: default
#

require 'spec_helper'

describe 'pluto_nginx::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '18.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs NGINX' do
	expect(chef_run).to install_package('nginx')
    end

    it 'starts the NGINX service' do
	expect(chef_run).to start_service('nginx')
    end

    it 'enables the NGINX service' do
	expect(chef_run).to enable_service('nginx')
    end
  end

  context 'When all attributes are default, on CentOS 7.4.1708' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.4.1708')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs NGINX' do
	expect(chef_run).to install_package('nginx')
    end

    it 'starts the NGINX service' do
	expect(chef_run).to start_service('nginx')
    end

    it 'enables the NGINX service' do
	expect(chef_run).to enable_service('nginx')
    end
  end
end
