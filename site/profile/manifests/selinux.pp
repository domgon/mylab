class profile::selinux {

#  class { selinux:
#    mode => 'disabled',
#  }

  include ::selinux
  
  selinux { 'disable':
    mode => 'disabled'
  }
}
