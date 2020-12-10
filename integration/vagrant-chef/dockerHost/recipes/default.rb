#
# Cookbook:: dockerHost
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'docker' do
    action :install
end

service 'docker' do
    action [:enable, :start]
end
  
  