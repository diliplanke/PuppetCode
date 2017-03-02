class localusers::groups::wheel {
	group { 'wheel':
 		ensure  => present,
		members => 'admin',
	}
}
