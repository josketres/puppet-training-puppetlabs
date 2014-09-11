include apache

$vhosts = {
  'gonzo.puppetlabs.vm' => {
    main_doc_root => '/var/www/gonzo.puppetlabs.vm',
  },
  'elmo.puppetlabs.vm' => {
    main_doc_root => '/var/www/elmo.puppetlabs.vm',
  }
}

create_resources(apache::vhost, $vhosts)
