class apache (
  $main_doc_root = $params::main_doc_root, 
) inherits apache::params {
  Class['install'] ->
  Class['config'] ~>
  Class['service']

  include install, config, service

  # alternative
  #  class {'install'} ->
  #  class {'config'} ~>
  #  class {'service'}

}
