class apache (
  $main_doc_root = '/etc/www/html',
) {
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
