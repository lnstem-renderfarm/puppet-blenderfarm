
class blenderfarm::blender {
  include blenderfarm::users
  include apt

  apt::ppa { 'ppa:thomas-schiex/blender': }

  package { 'blender':
    ensure => latest,
  }

  file { '/home/networkrender/blender-slave.py':
    require => File['/home/networkrender'],
    mode    => '0755',
    owner   => 'networkrender',
    group   => 'networkrender',
    source  => 'puppet:///modules/blenderfarm/blender-slave.py',
  }
  file { '/home/networkrender/slave-cmd.sh':
    require => File['/home/networkrender'],
    mode    => '0755',
    owner   => 'networkrender',
    group   => 'networkrender',
    source  => 'puppet:///modules/blenderfarm/slave-cmd.sh',
  }
  file { '/home/networkrender/ensure-running.sh':
                require => File['/home/networkrender'],
                mode    => '0755',
                owner   => 'networkrender',
                group   => 'networkrender',
                source  => 'puppet:///modules/blenderfarm/ensure-running.sh',
        }
  file { '/home/networkrender/install-blender-ppa.sh':
                require => File['/home/networkrender'],
                mode    => '0755',
                owner   => 'networkrender',
                group   => 'networkrender',
                source  => 'puppet:///modules/blenderfarm/install-blender-ppa.sh',
        }

  cron { 'blenderSlaveCheck':
    command => '/home/networkrender/ensure-running.sh',
    user    => 'networkrender',
    hour    => ['8-18'],
    minute  => '*/1',
  }
}

class { 'apt':
  update => {
    frequency => 'daily',
    },
}
