class profile::mysql {
  class { '::mysql::server':
    root_password => 'strongpassword',
  }
  
  class { '::mysql::bindings' :
    php_enable => true,
  }
}
