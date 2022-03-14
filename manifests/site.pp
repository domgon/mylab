node default {
}

node 'puppet-master.mylab.local' {
  include role::server
}

node 'server01.mylab.local' {
  include role::web
}

node 'server02.mylab.local' {
  include role::database
}
