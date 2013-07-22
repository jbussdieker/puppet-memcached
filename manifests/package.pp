class memcached::package {

  package {'memcached':
    ensure => present,
  }

}
