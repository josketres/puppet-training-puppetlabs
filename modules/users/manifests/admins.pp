class users::admins {
  
  # implicit dependency : requires Group['admins']
  user { 'elmo':
    ensure => present,
    gid    => 'admins',
  }

  # implicit dependency : requires Group['admins']
  user { 'kermit':
    ensure => present,
    gid    => 'admins',
  }

  group { 'admins':
    ensure => present,
    gid    => 5000,
  }
}
