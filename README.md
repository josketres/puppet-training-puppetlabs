puppet-training-puppetlabs
==========================


Command-line snippets
---------------------

To validate a file

    puppet parser validate path/to/file.pp
    #should be 0
    echo $?

To apply a manifest locally

    puppet apply path/to/manifest.pp
    
To get information about a resource

    puppet describe user
    
To get a fact

    facter osfamily


Get the current location of the config file

    puppet config print confdir
    
Get the list of available modules in the node

    puppet module list
    
Get the path where the modules are located

    puppet config print modulepath
    
Get current puppet configuration

    puppet agent --configprint all
    puppet master --configprint all

To debug a hiera entry

    puppet apply -e 'notice(hiera(apache::main_doc_root))' --debug | grep "Debug: hiera\|Notice:"
    hiera apache::main_doc_root --debug fqdn=josue.puppetlabs.vm

Install mysql and wordpress modules (for blog-webserver-lab)

    puppet module install puppetlabs-mysql
    puppet module install hunner-wordpress
    
Test a custom fact

    facter -p my-custom-fact

Other cool stuff
---------------------
* Validate the *.pp files before any commit (pre-commit hook).
