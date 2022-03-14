class profile::apache {
  package {'httpd':
    ensure => present,
  }
  include ::firewall
  
  firewall { '100 allow http and https access':
    dport  => [80, 443],
    proto  => 'tcp',
    action => 'accept'
  }
  
  service {'httpd':
    ensure => 'running',
    enable => 'true',
  }
}
