# == Class: memcached::service
class memcached::service ( $enable_memcached = 'yes' ) {

  case $enable_memcached {
    'no'   : { $enable = false }
    default: { $enable = true }
  }

  service { 'memcached':
    ensure => running,
    enable => $enable,
  }

}
