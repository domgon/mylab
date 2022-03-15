class profile::selinux {

#  class { selinux:
#    mode => 'disabled',
#  }

  include ::selinux
  
  selinux::module { 'disable':
    mode => 'disabled'
  }
}
