class base::ssh {

	$sshservice = $::osfamily ? {
		'RedHat' => 'sshd',
		'Debian' => 'ssh',
	} 

	package { 'openssh-package':
		name    => 'openssh-server',
		ensure  => 'present',
	}
	file { '/etc/ssh/sshd_config':
		ensure  => file,
		owner   => 'root',
		group   => 'root',
		require => Package['openssh-package'],
		source  => 'puppet:///modules/base/sshd_config',
		notify  => Service["$sshservice"],
		
	}
	service { "$sshservice":
		name   => $base::params::ssh_name,
		ensure => running,
		enable => true,
		alias  => 'ssh-service-name-two',
		# subscribe => File['/etc/ssh/sshd_config'],
	}
}
