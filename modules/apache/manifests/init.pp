class apache {

  package { 'httpd':
    ensure => installed,
  }

  file { '/var/www':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { '/var/www/html':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { '/var/www/html/index.html':
    source => 'puppet:///modules/apache/index.html',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

}
