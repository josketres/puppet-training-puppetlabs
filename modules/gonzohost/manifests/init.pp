class gonzohost {

  host { 'gonzo.local.vm':
    ensure       => present,
    ip           => '127.0.0.1',
    host_aliases => 'gonzo',
  }
}
