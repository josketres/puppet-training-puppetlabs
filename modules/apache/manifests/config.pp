class apache::config inherits apache::params {

  $main_doc_root = $apache::main_doc_root

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

  file { "${main_doc_root}/index.html":
    content => template('apache/index.html.erb'),
  }
  
  file { $conf_file:
    ensure  => file,
    content  => template('apache/httpd.conf.erb'),
    owner  => 'root',
    group  => 'root',
  }

}
