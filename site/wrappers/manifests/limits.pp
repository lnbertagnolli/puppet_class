class wrappers::limits {
  class { '::limits' :
    limits::fragment {
      "*/soft/nofile":
        value => "1024";
      "*/hard/nofile":
        value => "8192";
    }
  }
}
