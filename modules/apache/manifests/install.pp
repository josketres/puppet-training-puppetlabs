class apache::install {

  $package_name = $params::package_name

  package { $package_name :
    ensure => installed,
  }

}
