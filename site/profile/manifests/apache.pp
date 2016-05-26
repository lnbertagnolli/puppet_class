class profile::apache {
  host { ::fqdn :
    ensure => present,
    ip     => ::ipaddress,
  }
  
  include ::apache
  include ::apache::mod::php
  
  apache::vhost { ::fqdn :
    port    => '80',
    docroot => '/var/www/wordpress',
  }
  
}
