class practice::exec {
	
	file { '/etc/hosts' :
		ensure => file,
	}

	exec { 'echo "10.0.2.1 webserver01 #mywebserver" >> /etc/hosts' :
		
		path	=> ["/usr/bin","/bin"],
	#	command => 'echo "10.0.2.1 webserver01 #mywebserver" >> /etc/hosts',
		require => File['/etc/hosts'],	
		onlyif	=> 'test -z  $(grep "10.0.2.1 webserver01" /etc/hosts)',
	}
}
