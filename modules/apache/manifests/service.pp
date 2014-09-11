class apache::service inherits apache::params {

  service { $service_name :
    ensure  => running,
  }

}
