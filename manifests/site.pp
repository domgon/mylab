node default {
}

node 'server01.mylab.vm' {
  include role::web
}

node 'server02.mylab.vm' {
  include role::database
}
