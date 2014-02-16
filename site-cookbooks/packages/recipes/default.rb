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

# install ext4 libraries
%w{e2fslibs e2fslibs-dev e2fsprogs ext4magic}.each do |pkg|
  package pkg do
    action :install
  end
end
