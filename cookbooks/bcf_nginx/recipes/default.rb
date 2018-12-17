#
# Cookbook:: bcf_nginx
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package "epel-release"
package "nginx"

service "nginx" do
 action [:enable, :start]
end

file "/usr/share/nginx/html/index.html" do
 content "<h1>Hello, World!</h1>"
 action :create
 not_if { ::File.exists?("/usr/share/nginx/html/index.html") }
end

file "/usr/share/nginx/html/environments.html" do
	extend BcfNginx::EnvironmentHelpers
	content environments_html_list
end

file "/etc/nginx/example.conf" do
	content 'example content updated'
	notifies :reload, 'service[nginx]'
end
