name 'bcf_nginx'
maintainer 'Chuks Dee'
maintainer_email 'chuks@example.com'
license 'All Rights Reserved'
description 'Installs/Configures nginx'
long_description 'Installs/Configures nginx'
version '1.0.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

supports 'centos'
supports 'fedora'
supports 'redhat'

git_url = "https://github.com/daddychukz/bcf_nginx"

source_url git_url
issues_url "#{git_url}/issues"
