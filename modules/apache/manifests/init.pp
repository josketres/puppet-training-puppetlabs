class apache {
  Class['params'] -> 
  Class['install'] ->
  Class['config'] ~>
  Class['service']

  include params, install, config, service

  # alternative
  #  class {'params'} ->
  #  class {'install'} ->
  #  class {'config'} ~>
  #  class {'service'}

}
