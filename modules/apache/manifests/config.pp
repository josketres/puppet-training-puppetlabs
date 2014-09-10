class apache::config {

  $owner = $params::owner
  $group = $params::group
  $conf_file = $params::conf_file

  # set defaults for all file resources in this class
  File {
    owner  => $owner,
    group  => $group,
    mode   => '0644',
  }

  file { '/var/www':
    ensure => directory,
    mode   => '0755',
  }

  file { '/var/www/html':
    ensure => directory,
    mode   => '0755',
  }

  file { '/var/www/html/index.html':
    content => template('apache/index.html.erb'),
  }
  
  file { $conf_file:
    ensure  => file,
    source  => 'puppet:///modules/apache/httpd.conf',
    owner  => 'root',
    group  => 'root',
  }

}
