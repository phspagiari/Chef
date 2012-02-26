#
# Cookbook Name:: custom
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute


cookbook_file "/usr/local/bin/test.sh" do
  source "test.sh"
  mode node[:custom][:default_perms]
  owner node[:custom][:default_user]
  group node[:custom][:root_group]
end

execute "test" do
  command "/usr/local/bin/test.sh"
  action :run
end