class profile::commun {
  package {'net-tools':
    ensure => present,
  }
  package {'bind-utils':
    ensure => present,
  }
  include profile::openssh
}
