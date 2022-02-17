class profile::agent_node {
  include dockeragent
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
  host {'web.pupper.vm':
    ensure => present,
    ip => '172.18.0.2',
  }
  host {'db.pupper.vm':
    ensure => present,
    ip => '172.18.0.3',
  }    
}
