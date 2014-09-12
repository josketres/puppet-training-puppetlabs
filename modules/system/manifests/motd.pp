class system::motd {

  $motd_file = '/etc/motd'

  concat { $motd_file:
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  concat::fragment { 'header':
    target  => $motd_file,
    content => template('system/motd.header.erb'),
    order   => '01',
  }

  concat::fragment { 'message':
    target  => $motd_file,
    content => 'this is the message of the day...',
    order   => '02',
  }
}
