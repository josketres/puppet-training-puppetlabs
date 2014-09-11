class apache::webserver {

  file { '/var/www/webserver-html':
    ensure => directory,
    mode   => '0755'
  } ->

  class { 'apache':
    main_doc_root => '/var/www/webserver-html',
  }

}
