# Copyright 2025. Puppet, Inc., a Perforce company.  
#
# This profile builds a web server with Apache.
# All roles should include the base profile.
class role::web_server {
  include profile::base
  include profile::apache_server
}
