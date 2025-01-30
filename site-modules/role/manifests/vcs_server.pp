# Copyright 2025. Puppet, Inc., a Perforce company.  
#
# @summary This class installs a VCS server
#
class role::vcs_server {
  include profile::gitea_server
}
