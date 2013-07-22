class memcached(
  $enable_memcached = 'yes',
  $log_file         = '/var/log/memcached.log',
  $memory_max       = 64,
  $listen_port      = 11211,
  $listen_ip        = '127.0.0.1',
  $memcache_user    = 'memcache',
  $connection_limit = 1024
) {

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
