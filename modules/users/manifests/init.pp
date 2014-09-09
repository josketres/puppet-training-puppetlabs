class users(
  $ensure = 'present',
) {
  user { 'fundamentals' :
    ensure => $ensure,
  }
}
