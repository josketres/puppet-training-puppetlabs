class profiles::webserver::apache(
  $vhosts = {},
  $databases = {},
) {
  include ::apache
  include mysql::server

  ensure_resource('file', prefix(keys($vhosts), '/var/www/'), {
    ensure => directory,
  })

  create_resources('apache::vhost', $vhosts)
  create_resources('mysql::db', $databases)
}

