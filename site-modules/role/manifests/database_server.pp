# Copyright 2025. Puppet, Inc., a Perforce company.  
#
# This role builds a MySQL server.
# All roles should include the base profile.
class role::database_server {
  include profile::base
  include profile::mysql_server
}
