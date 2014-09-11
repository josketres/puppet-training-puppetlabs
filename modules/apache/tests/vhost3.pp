include apache

create_resources(apache::vhost, hiera(apache::vhosts))
