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
  
execute 'login to docker registry' do
    command "docker login ghcr.io -u pu5zkin -p #{node['github_token']}"
    sensitive true
end

execute 'run docker image' do
    command 'docker pull ghcr.io/pu5zkin/spa/spa:latest'
end