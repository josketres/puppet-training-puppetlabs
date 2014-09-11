class apache::install inherits apache::params {

  package { $package_name :
    ensure => installed,
  }

}
