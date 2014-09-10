class conditionals {
}

class conditionals::in {
  file { '/tmp/os':
    content => $::operatingsystem ? {
      'CentOS' => 'cent-os',
      default  => 'unknown'
    },
  }
}
