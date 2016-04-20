class blenderfarm {
	exec { 'apt-update':
		command => '/usr/bin/apt-get update -qq',
	}
	package { 'blender':
		require => Exec['apt-update'],
		ensure => installed,
	}
	group { 'networkrender':
		gid => 2001,
	}
	user { 'networkrender':
		require => Group['networkrender'],
		ensure => present,
		uid => 2001,
		gid => 2001,
		shell => '/bin/bash',
		home => '/home/networkrender',
		comment => "Network Render",
		managehome => true,
	}

	file { '/home/networkrender':
		require => User['networkrender'],
		ensure => directory,
		mode => '754',
		owner => 'networkrender',
		group => 'networkrender',
	}

	file { '/home/networkrender/blender-slave.py':
		require => File['/home/networkrender'],
		mode => '755',
		owner => 'networkrender',
		group => 'networkrender',
		source => "puppet:///modules/blenderfarm/blender-slave.py",
	}
	file { '/home/networkrender/slave-cmd.sh':
		require => File['/home/networkrender'],
		mode => '755',
		owner => 'networkrender',
		group => 'networkrender',
		source => "puppet:///modules/blenderfarm/slave-cmd.sh",
	}
	file { '/home/networkrender/ensure-running.sh':
                require => File['/home/networkrender'],
                mode => '755',
                owner => 'networkrender',
                group => 'networkrender',
                source => "puppet:///modules/blenderfarm/ensure-running.sh",
        }

	cron { 'blenderSlaveCheck':
		command => '/home/networkrender/ensure-running.sh',
		user    => 'networkrender',
		hour    => ['8-18'],
		minute  => '*/1',
	}
}
