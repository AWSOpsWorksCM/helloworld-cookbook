#
# Cookbook:: helloworld
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Install a package!
package 'httpd' do
  action :install
end

# Configure a file
cookbook_file '/var/www/html/index.html' do
  action :create
  source 'index.html'
end

# Configure an image
cookbook_file '/var/www/html/amazon.png' do
  action :create
  source 'amazon.png'
end

# Start the Apache service
service 'httpd' do
  action :start
end
