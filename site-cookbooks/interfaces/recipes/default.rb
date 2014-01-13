#
# Cookbook Name:: interfaces
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node[:interfaces].each do |device, address|
  network_interfaces device do
    target address
    mask      "255.255.255.0"
    gateway   "192.168.0.1"
    broadcast "192.168.0.255"
  end
end
