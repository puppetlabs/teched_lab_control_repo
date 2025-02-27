# Copyright 2025. Puppet, Inc., a Perforce company.  
#
# This profile creates a MySQL server and sets the root password as given.
class profile::mysql_server (
  #
  #  The root password for the MySQL server.
  #  @param String $mysql_root_password The root password for the MySQL server.
  #  Default value is "default password".
  #  
  String $mysql_root_password = 'default password'
) {
  class { 'mysql::server':
    root_password           => $mysql_root_password,
    remove_default_accounts => true,
    restart                 => true,
  }

  $my_cnf = "#
# This group is read both both by the client and the server
# use it for options that affect everything
#
[client-server]

#
# include all files from the config directory
#
!includedir /etc/my.cnf.d
"

  file { '/etc/my.cnf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    content => $my_cnf,
    notify => Class['mysql::server::service'],
  }
}
