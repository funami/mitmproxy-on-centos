#
# Cookbook Name:: mitmproxy
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{libffi-devel libxslt-devel libxslt-python libxml2-devel libxml2-python}.each do |pkg|
  package pkg do
    action :install
  end
end
%w{nose mitmproxy}.each do |pkg|
  execute "install-#{pkg}" do
    command "pip install #{pkg}"
  end
end
