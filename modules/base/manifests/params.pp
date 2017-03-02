class base::params {
	
       $author = "dilz"
       case $::osfamily {
               'RedHat': { $ssh_name = 'sshd' }
               'Debian': { $ssh_name = 'ssh' }
               default: { fail('OS not supported for module ssh') }
       }
}
#       $ssh_name = $osfamily ? {
#               'RedHat'  => 'sshd',
#               'Debian'  => 'ssh',
#               default   => 'value',
#       }

