class apache::service {

  $service_name = $params::service_name

  service { $service_name :
    ensure  => running,
  }

}
