class apache::params {

  case $::osfamily {
    'RedHat': {
      $conf_file = '/etc/httpd/conf/httpd.conf'
      $owner = 'apache'
      $group = 'apache'
      $service_name = 'httpd'
      $package_name = 'httpd'
      $main_doc_root = '/var/www/html'
    }
    'Debian' : {
      $conf_file = '/etc/apache2/apache2.conf'
      $owner = 'www-data'
      $group = 'www-data'
      $service_name = 'apache2'
      $package_name = 'apache2'
      $main_doc_root = '/var/www'
    }
    default : {
      fail("osfamily '${::osfamily}' not supported")
    }
  }

}
