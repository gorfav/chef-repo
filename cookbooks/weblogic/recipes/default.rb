#
# Cookbook Name:: weblogic
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory '/tmp'

template '/tmp/server-info.txt' do
 source 'server-info.txt.erb'
end
