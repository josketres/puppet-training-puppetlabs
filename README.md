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
    

Other cool stuff
---------------------
* Validate the *.pp files before any commit (pre-commit hook).
