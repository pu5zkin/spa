#
# Cookbook:: dockerHost
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'dockerHost::default' do
  context 'When all attributes are default, on CentOS 8' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'centos', '7'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it { is_expected.to install_package('docker') }

    it { is_expected.to enable_service('docker') }

    it { is_expected.to start_service('docker') }
  end
end
