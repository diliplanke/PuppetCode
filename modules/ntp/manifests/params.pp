class ntp::params {
        case $::operatingsystem {
                'CentOS': {
                        $template = 'ntp.centos.conf'
                        $servicename = 'ntpd'
			$default_servers = [ "0.centos.pool.ntp.org iburst",
					"1.centos.pool.ntp.org iburst",
					"2.centos.pool.ntp.org iburst",
					"3.centos.pool.ntp.org iburst", ]
                }
                'ubuntu': {

                        $template = 'ntp.ubuntuos.conf'
                        $servicename = 'ntp'
			$default_servers = [ "0.ubuntu.pool.ntp.org",
					"1.ubuntu.pool.ntp.org",
					"2.ubuntu.pool.ntp.org",
					"3.ubuntu.pool.ntp.org", ] 
                }

                default: {
                        fail("OS $::operatingsystem is not currently supported" )
                }
        }
}
