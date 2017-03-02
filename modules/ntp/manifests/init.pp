class ntp {
	
	package { 'ntp':
		ensure	=> present,
	}

        include ntp::params
#	include ntp::file
	class {'ntp::file' : servers => 'Dilz', }
        include ntp::service


#	service { 'ntpservice' :
#		ensure	=> running,
#		require	=> 'ntp',
#		subscribe => '/etc/ntp/ntp.conf'
#		
#	}
}
