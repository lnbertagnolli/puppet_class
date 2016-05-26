class profile::apache {
  host { $::fqdn :
    ensure       => present,
    host_aliases => $::hostname
    ip           => $::ipaddress,
  }
  
  include ::apache
  include ::apache::mod::php
  
  apache::vhost { $::fqdn :
    port    => '80',
    docroot => '/var/www/wordpress',
  }
  
}
