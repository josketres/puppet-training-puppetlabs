class apache {

  package { 'httpd':
    ensure => installed,
  }

  file { '/var/www':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    require => Package['httpd'],
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
  
  service { 'httpd':
    ensure  => running,
    subscribe => File['/etc/httpd/conf/httpd.conf'],
  }

  file { '/etc/httpd/conf/httpd.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/apache/httpd.conf',
    require => Package['httpd'],
  }

}
