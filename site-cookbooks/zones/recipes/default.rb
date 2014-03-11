#
# Cookbook Name:: zones
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node["zones"].each_with_index do |values, index|
  domain, info = values
  template "/var/cache/bind/master/db.#{domain}" do
    source "zone.erb"
    mode 0440
    owner "bind"
    group "bind"
    variables domain: domain, host: info[:host], a_records: info[:a] || {}, index: index
  end
end
