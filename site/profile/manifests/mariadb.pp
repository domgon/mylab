class profile::mariadb {
  package {'mariadb-server':
    ensure => present,
  }
  service {'mariadb':
    ensure => 'running',
    enable => 'true'
  }
  include ::firewall
  
  firewall { '100 allow mysql access':
    dport  => [3306],
    proto  => 'tcp',
    action => 'accept'
  }
}
