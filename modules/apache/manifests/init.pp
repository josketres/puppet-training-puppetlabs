class apache (
  $main_doc_root = $params::main_doc_root, 
) inherits apache::params {

  anchor { 'apache:begin': } ->
  Class['install'] ->
  Class['config'] ~>
  Class['service'] ->
  anchor { 'apache:end': }

  include install, config, service

  # alternative
  #  class {'install'} ->
  #  class {'config'} ~>
  #  class {'service'}

}
