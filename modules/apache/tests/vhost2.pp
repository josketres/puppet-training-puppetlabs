include apache

$vhosts = {
  'gonzo.puppetlabs.vm' => {
    docroot => '/var/www/gonzo.puppetlabs.vm',
  },
  'elmo.puppetlabs.vm' => {
    docroot => '/var/www/elmo.puppetlabs.vm',
  }
}

create_resources(apache::vhost, $vhosts)
#  puppet apply modules/apache/tests/vhost2.pp --noop --debug

