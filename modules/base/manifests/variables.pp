class base::variables {
	file { '/root/var_test.txt':
		content => $topscope,
		owner   => 'root',
		group   => 'root',
		mode 	=> '0664',
	}
 	$localvar = "local var"	
	$topscope = "Topscope from variables class"
	notify { "${::operatingsystem} is your operating system ": }
        notify { "${topscope} is scope variable ": }
        notify { "${nodescope} is scope variable ": }
        notify { "${localvar} is scope variable ": }
       # notify { "${::topscope} is scope variable ": }

}	
