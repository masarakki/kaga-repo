#
# Cookbook Name:: packages
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{vim emacs}.each do |pkg|
  package pkg do
    action :install
  end
end

# install ext4 libraries and software raid
%w{e2fslibs e2fslibs-dev e2fsprogs ext4magic mdadm}.each do |pkg|
  package pkg do
    action :install
  end
end
