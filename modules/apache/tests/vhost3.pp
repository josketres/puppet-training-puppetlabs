include apache

create_resources(apache::vhost, hiera(apache::vhosts))
# puppet apply modules/apache/tests/vhost3.pp --noop --debug

