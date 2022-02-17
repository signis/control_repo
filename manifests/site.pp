node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
  user { 'foo':
    ensure   => present,
    password => Sensitive("my secret password")
  }
}
