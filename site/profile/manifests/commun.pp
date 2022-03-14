class profile::commun {
  package {'net-tools':
    ensure => present,
  }
  package {'net-utils':
    ensure => present,
  }
}
