class profile::mariadb {
  package {'mariadb-server':
    ensure => present,
  }
  service {'mariadb':
    ensure => 'running',
    enable => 'true'
  }
}
