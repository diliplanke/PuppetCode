class ntp::service {

	service { 'ntp_service' :
		name	  => "$ntp::params::servicename",	
		ensure	  => running,
		enable	  => true,
		require	  => Package['ntp'],
		subscribe => File['/etc/ntp.conf'],

	}
}
