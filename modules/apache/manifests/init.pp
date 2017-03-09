class apache (
	$package_name  = $apache::params::package_name,
	$service_name  = $apache::params::service_name,
	$vhost_dir     = $apache::params::vhost_dir,
	$conf_dir      = $apache::params::conf_dir,
	$document_root = $apache::params::document_root,
	$log_dir       = $apache::params::log_dir,

) inherits apache::params {

include apache::service
include apache::package


        file { $log_dir:
                ensure  => directory,
                recurse => true,
        }
	
	apache::vhost { "default":
		port	      => 80,
		document_root => $document_root,
		servername    => $servername,
		vhost_dir     => $vhost_dir,

	}

        apache::vhost { "dilz-in3b":
                port          => 80,
                document_root => "${document_root}/dilz-in3b",
                servername    => "dilz-in3b.mylabserver.com",
                vhost_dir     => $vhost_dir,

        }


}
