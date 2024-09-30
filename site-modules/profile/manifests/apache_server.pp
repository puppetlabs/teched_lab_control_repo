# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::apache_server
class profile::apache_server {
  class { 'apache':
    default_vhost => true,
  }
}
