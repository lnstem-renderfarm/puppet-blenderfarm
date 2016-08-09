
define blenderfarm::accounts ($uid,$realname,$pass,$sshkeytype,$sshkey) {

  # Pull in values from accounts::params
  $homepath =  '/home'
  $shell    =  '/bin/bash'

  # Create the user
  user { $title:
    ensure     =>  'present',
    uid        =>  $uid,
    gid        =>  $title,
    shell      =>  $shell,
    home       =>  "${homepath}/${title}",
    comment    =>  $realname,
    password   =>  $pass,
    managehome =>  true,
    require    =>  Group[$title],
  }

  # Create a matching group
  group { $title:
    gid => $uid,
  }

  # Ensure the home directory exists with the right permissions
  file { "${homepath}/${title}":
    ensure  =>  directory,
    owner   =>  $title,
    group   =>  $title,
    mode    =>  '0750',
    require =>  [ User[$title], Group[$title] ],
  }

  # Ensure the .ssh directory exists with the right permissions
  file { "${homepath}/${title}/.ssh":
    ensure  =>  directory,
    owner   =>  $title,
    group   =>  $title,
    mode    =>  '0700',
    require =>  File["${homepath}/${title}"],
  }

  # Add user's SSH key
  if ($sshkey != '') {
    ssh_authorized_key {$title:
      ensure => present,
      name   => $title,
      user   => $title,
      type   => $sshkeytype,
      key    => $sshkey,
    }
  }
}
