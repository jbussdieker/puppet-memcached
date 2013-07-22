class memcached::service {

  service {'memcached':
    ensure => running,
  }

}
