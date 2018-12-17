name 'bcf_users'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures bcf_users'
long_description 'Installs/Configures bcf_users'
version '1.0.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'users', '~> 5.3.1'
