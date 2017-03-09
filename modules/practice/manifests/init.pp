class practice {
	host { 'webserver02':
		name		=> 'webserver02.mylabserver.com',
		ip		=> '10.2.2.2',
		host_aliases	=> [ 'web02','webhead02','webserver02'],
		comment		=> 'this is our webserver02 primary',	
		
	}
}
