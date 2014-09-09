class users::admins {
  
  user { 'elmo':
    ensure => present,
    gid    => 'admins',
  }

  user { 'kermit':
    ensure => present,
    gid    => 'admins',
  }

  group { 'admins':
    ensure => present,
    gid    => 5000,
  }
}
