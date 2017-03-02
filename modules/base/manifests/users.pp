class base::users {
	group { 'peadmin':
		ensure => 'present',
		gid    => '501',
	}
	user { 'dilz':
		ensure => 'present',
		require => Group['peadmin'],
		gid    => '501',
		home   => '/home/dilz',
		password => 'jamabalaya',
		password_max_age => '99999',
		password_min_age => '0',
		shell		 => '/bin/bash',
		uid		 => '510'
	}	

        user { 'bowers':
                ensure => 'present',
                require => Group['peadmin'],
                gid    => '501',
                home   => '/home/bowers',
                password => 'jamabalaya',
                password_max_age => '99999',
                password_min_age => '0',
                shell            => '/bin/bash',
                uid              => '511'
        }

}
	
