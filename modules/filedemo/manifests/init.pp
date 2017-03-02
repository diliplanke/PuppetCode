class filedemo {
	File {
		owner => 'root',
		group => 'finance',
		mode  => '0600',

	}	
	
	$homedir = "/root"
	$content = "the content for the file from variable" 
	
	file { "${homedir}/myfile1.txt":
		content => "${content}",
	}
	
	file { "$homedir/myfile2.txt":
		mode    => 777,
		content => "myfile2 content",
	} 
	
	file { "${homedir}/myfile3.txt":
		owner  => admin,
		group  => root,
		content => "myfile3 content",
		
	}

	file { '/root/motd':
		ensure	=> present,
		source => 'puppet:///modules/filedemo/motd',
		owner   => root,
		group 	=> root,
		mode 	=> '0644',
	}  
	file { '/etc/motd':
                ensure  => link,
		target  => '/root/motd',
        }

}
