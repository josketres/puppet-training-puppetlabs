class apache {

  $conf_file = '/etc/httpd/conf/httpd.conf'

  # set defaults for all file resources in this class
  File {
    owner  => 'apache',
    group  => 'apache',
    mode   => '0644',
  }

  package { 'httpd':
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
    source => 'puppet:///modules/apache/index.html',
  }
  
  service { 'httpd':
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
