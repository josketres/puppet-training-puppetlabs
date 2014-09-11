include apache

File {
  owner => 'apache',
  group => 'apache',
  mode  => '0644',
}

file { '/var/www/elmo.puppetlabs.vm':
  ensure => directory,
} ->
host { 'elmo.puppetlabs.vm':
 ensure       => present,
 ip           => '127.0.0.1',
 host_aliases => 'elmo',
} ->
apache::vhost { 'elmo.puppetlabs.vm':
  docroot => '/var/www/elmo.puppetlabs.vm',
}

file { '/var/www/gonzo.puppetlabs.vm':
  ensure => directory,
} ->
host { 'gonzo.puppetlabs.vm':
 ensure       => present,
 ip           => '127.0.0.1',
 host_aliases => 'gonzo',
} ->
apache::vhost { 'gonzo.puppetlabs.vm':
  docroot => '/var/www/gonzo.puppetlabs.vm',
}
