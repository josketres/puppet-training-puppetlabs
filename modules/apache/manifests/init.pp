class apache {

  case $::osfamily {
    'RedHat': {
      $conf_file = '/etc/httpd/conf/httpd.conf'
      $owner = 'apache'
      $group = 'apache'
      $service_name = 'httpd'
      $package_name = 'httpd'
    }
    'Debian' : {
      $conf_file = '/etc/apache2/apache2.conf'
      $owner = 'www-data'
      $group = 'www-data'
      $service_name = 'apache2'
      $package_name = 'apache2'
    }
    default : {
      fail("osfamily '${::osfamily}' not supported")
    }
  }

  # set defaults for all file resources in this class
  File {
    owner  => $owner,
    group  => $group,
    mode   => '0644',
  }

  package { $package_name :
    ensure => installed,
  }

  file { '/var/www':
    ensure => directory,
    mode   => '0755',
    require => Package['httpd'],
  }

  file { '/var/www/html':
    ensure => directory,
    mode   => '0755',
  }

  file { '/var/www/html/index.html':
    content => template('apache/index.html.erb'),
  }
  
  service { $service_name :
    ensure  => running,
    subscribe => File[$conf_file],
  }

  file { $conf_file:
    ensure  => file,
    source  => 'puppet:///modules/apache/httpd.conf',
    owner  => 'root',
    group  => 'root',
    require => Package['httpd'],
  }

}
