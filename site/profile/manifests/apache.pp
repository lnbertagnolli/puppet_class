class profile::apache {
  $wp_home = '/opt/wordpress'

  host { $::fqdn :
    ensure       => present,
    host_aliases => [$::hostname],
    ip           => $::ipaddress,
  }

  include ::apache
  include ::apache::mod::php

  file { $wp_home :
    ensure => directory,
  }

  apache::vhost { $::fqdn :
    port    => '80',
    docroot => $wp_home,
    require => File[$wp_home],
  }
}
