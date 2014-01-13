#
# Cookbook Name:: guest
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user "guest" do
  comment "guest user"
  home "/home/guest"
  shell "/bin/bash"
  supports manage_home: true
  password SecureRandom.hex
end

directory "/home/guest/.ssh" do
  mode  "0700"
  owner "guest"
  group "guest"
end

cookbook_file "authorized_keys" do
  path "/home/guest/.ssh/authorized_keys"
  mode  "0600"
  owner "guest"
  group "guest"
end
