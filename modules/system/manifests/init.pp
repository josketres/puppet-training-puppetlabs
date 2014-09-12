class system::admins {

  @user { 'elmo':
    ensure => present,
    tag => ['wordpress']
  }

  @user { 'kermit':
    ensure => present,
    tag => ['sysadmin']
  }

  @user { 'gonzo':
    ensure => present,
    tag => ['wordpress']
  }
}
