class practice::mount {
	file { '/content' : 
		ensure	=> directory,

	}
	
	mount { '/content' :
		
		device	=> '/dev/xvdf',
		fstype	=> 'ext2',
		options	=> 'defaults',
		ensure	=> 'mounted',
		require	=> File['/content'],

	}
}
