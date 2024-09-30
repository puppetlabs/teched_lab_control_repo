# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include role::web_server
class role::web_server {
  include profile::base
  include profile::apache_server
}
