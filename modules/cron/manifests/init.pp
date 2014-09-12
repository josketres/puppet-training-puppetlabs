class cron {

  ensure_resource('file', [ '/etc/cron.allow', '/etc/cron.deny'], {
    ensure => present
  })

  $allow = '/etc/cron.allow'
  file_line { $allow:
    ensure => present,
    path   => $allow,
    line   => 'root',
  }

  $deny = '/etc/cron.deny'
  file_line { $deny: 
    ensure => present,
    path   => $deny,
    line   => '*',
  }

}
