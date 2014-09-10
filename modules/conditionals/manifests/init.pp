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

class conditionals::out {

  $file_content = $::operatingsystem ? {
    'CentOS' => 'cent-os',
    default  => 'unknown'
  }

  file { '/tmp/os':
    content => $file_content
  }
}

class conditionals::case {

  case $::operatingsystem {
    'CentOS': {
      $file_content = 'cent-os'
    }
    default : {
      $file_content = 'unknown'
    }
  }

  file { '/tmp/os':
    content => $file_content
  }
}
