class profile::commun {
  package { 'net-tools':
          ensure => present,
  }
  package { 'bind-utils':
          ensure => present,
  }
  service { 'puppet':
          ensure => 'running',
          enable => 'true',
  }
  include profile::openssh
}
