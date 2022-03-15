class profile::commun {

  include profile::openssh
  include profile::selinux
  
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
}
