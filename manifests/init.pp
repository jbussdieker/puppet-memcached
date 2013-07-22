class memcached {

  class {'memcached::package':
    notify => Class['memcached::service'],
  }

  class {'memcached::config':
    notify  => Class['memcached::service'],
    require => Class['memcached::package'],
  }

  class {'memcached::service':
    require => Class['memcached::config'],
  }

}
