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
