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
  
execute 'run docker image' do
    command 'docker run --rm -d -p 80:80/tcp ghcr.io/pu5zkin/spa/spa:latest'
end