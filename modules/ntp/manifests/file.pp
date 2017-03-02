class ntp::file ($template = $ntp::params::template, $servers = $ntp::params::default_servers) inherits ntp{
	
#	$template = $ntp::params::template
#	$servers  = $ntp::params::default_servers
	notify { "template value from file.pp is :  $template , server value from file.pp is $servers " :}
	file { '/etc/ntp.conf':
		ensure	=> file,
		require	=> Package['ntp'],
#		content => template("ntp/${template}.erb")
			
	
	}

}
