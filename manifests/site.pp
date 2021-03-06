
## site.pp ##

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# PRIMARY FILEBUCKET
# This configures puppet agent and puppet inspect to back up file contents when
# they run. The Puppet Enterprise console needs this to display file contents
# and differences.

# Define filebucket 'main':
filebucket { 'main':
  server => 'dilz-in3.mylabserver.com',
  path   => false,
}

# Make filebucket 'main' the default backup location for all File resources:
File { backup => 'main' }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.
$topscope = "Topscope from site.pp"
#$console_test = "from site.pp"
$key3 = "site.pp and is topscope"

node default {
  # This is where you can declare classes for all nodes.
  # Example:
  #   class { 'my_class': }
}
node "dilz-in3.mylabserver.com" {
$key3 = "site.pp and is nodescope"
#        $key2 = "site.pp and nodescope"
	include consoledemo2
#	include pe_repo::platform::ubuntu_1404_amd64
#	include roles::webserver
#	include hierademo
}

node "dilz-in6.mylabserver.com" {
	include practice 
	include practice::mount
}
node /^dilz-in\d{1}.mylabserver.com$/ {
	$nodescope = "Nodescope from site.pp"
	include roles::webserver 
#	include base
#	include base::ssh
#	include base::variables
#	include base::users
#	include localusers
#	include localusers::groups::wheel
#	include localusers::groups::finance
#	include ntp
	notify { 'this is a test notify': }
}
