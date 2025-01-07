# Copyright 2025. Puppet, Inc., a Perforce company.  
#
# This profile creates an Apache server with the default Virtual Host enabled.
class profile::apache_server {
  class { 'apache':
    default_vhost => true,
  }
}
