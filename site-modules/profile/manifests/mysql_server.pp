# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::mysql_server
class profile::mysql_server (String $mysql_root_password) {
  class { 'mysql::server':
    root_password           => 'Saving passwords in code is smart.',
    remove_default_accounts => true,
    restart                 => true,
  }
}
