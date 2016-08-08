
include blenderfarm::accounts

class blenderfarm::users {

  package { 'zsh':
    ensure => installed,
  }

  blenderfarm::accounts { 'networkrender':
    uid        => 2001,
    realname   => 'Network Render',
    pass       => '$6$nCBYGFsV$l/5G.8bgrY3b/0fa2ccn8zGuOsV5jliPi348L4Pz33p7E70EynNOKZ.teK/BufUmCWCGJDE3A2ZxVij9sEN2J0',
    sshkeytype => 'ssh-rsa',
    sshkey     => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQC9SmWAthHj67nh80jLbJQq4EQJcSrL3TAWRNjRzz8c+GkDufOgcpYHpP1LMA+pqG/Lc9sXKjBTWRpPL6PHxe6ZjOwLfYU/P7rt06GGPB7WgPfOZSmkcl1bmaqST8hBegE6Wzz7kfjiHX3ldC1guP8VzQINAlfBs+F0YwSRAbtdOBOqil5/rWtL2QV2rqQ31CcWzaG6zkbc0SQ0msqQlcF7DTPwEepa7eo9pCyO0gxxCokqFuhKgFq2RbUYQ+wtnv/2IWLuUbEFYPZFM9ZzAuWBeaqOGTIh8taoGCOUEXgaeM3lJUaxmHogKNHKuWvGjAvM9o2x3OcVS2bPyjwQHThGgWzpEFzO+j6h62jie+/LRSBizn1XZhxNxiA/DPK8w/HsH9AUM03emNqWRL7tb4hSi7dlGstLjQ6ThaupNYMRjkneTKaibNgZt3aQs4ugIpNvDB98kh67h5HGjj9E0dFM5rVEkTzI5N66hFs9ViKzlhgf4uGh1R+H992Mz8sPKkaU4thOqEusHDLILXORzVqSxtsBG8VJFoKQMrbuW8+yyFNLCJ3NmLiyMtYw3T0zjs82xkZ6u/gCbz1/6nSqQwcVd5+CJV7P9UfNV64e4DbHf5vwcXEJGTn0C/axrWJ0bCy9oxyFkL8dpaHqQ6MIqd+57TnZ+usZ3/AtQxpA8FdQCw==',
  }

  blenderfarm::accounts { 'robo':
    uid        => 3017,
    realname   => 'Ben Klein',
    pass       => '$6$nHSqHpGI$lAc6gRN0/snuUKZcNIGx9gdvou1WF0D.DVeOZyJEcXyek/05p4SZ6dPJ5msD17V5Yql/V8n8VHLbpaK7xKudd.',
    sshkeytype => 'ssh-rsa',
    sshkey     => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQC9SmWAthHj67nh80jLbJQq4EQJcSrL3TAWRNjRzz8c+GkDufOgcpYHpP1LMA+pqG/Lc9sXKjBTWRpPL6PHxe6ZjOwLfYU/P7rt06GGPB7WgPfOZSmkcl1bmaqST8hBegE6Wzz7kfjiHX3ldC1guP8VzQINAlfBs+F0YwSRAbtdOBOqil5/rWtL2QV2rqQ31CcWzaG6zkbc0SQ0msqQlcF7DTPwEepa7eo9pCyO0gxxCokqFuhKgFq2RbUYQ+wtnv/2IWLuUbEFYPZFM9ZzAuWBeaqOGTIh8taoGCOUEXgaeM3lJUaxmHogKNHKuWvGjAvM9o2x3OcVS2bPyjwQHThGgWzpEFzO+j6h62jie+/LRSBizn1XZhxNxiA/DPK8w/HsH9AUM03emNqWRL7tb4hSi7dlGstLjQ6ThaupNYMRjkneTKaibNgZt3aQs4ugIpNvDB98kh67h5HGjj9E0dFM5rVEkTzI5N66hFs9ViKzlhgf4uGh1R+H992Mz8sPKkaU4thOqEusHDLILXORzVqSxtsBG8VJFoKQMrbuW8+yyFNLCJ3NmLiyMtYw3T0zjs82xkZ6u/gCbz1/6nSqQwcVd5+CJV7P9UfNV64e4DbHf5vwcXEJGTn0C/axrWJ0bCy9oxyFkL8dpaHqQ6MIqd+57TnZ+usZ3/AtQxpA8FdQCw==',
  }

  blenderfarm::accounts { 'awde123':
    uid        => 3051,
    realname   => 'Gregory Croisdale',
    pass       => '$6$DDAXsphF$lfPSKloN6QaB4.Zk7Woidnmu19CDyEtmzr4g4VeabGjuAsSdqxTigQ9taH103MyrMdNERmT07cJ7JibQm/68n/',
    sshkeytype => 'ssh-rsa',
    sshkey     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDRdkxC53G/jUuCVcgUXNbit+P3CbV8uzrcc/6+wCFtLb7/6bVtKEIFrgO6ROydthyy0snag3g1WmAx+6JwId5BuZje3kIWBwpYEut7LWjKq2R9n8DLa16dQOEc5dxXNAxrXtqAOK+vpYp91I/ZmLq/dQG7K/B//ifA7GP56fw29jKTjkncTpco5q3v+uspLz4GytvZeQ8mjPMBwITAN6emCyFrQn7/5HZjCqzTzw83EfF/GSz8MiGN3PG/ukX3r0DTf6zLvPO7Hy0Ya7MOEqTrCVnXRi4irQE0UcODFsODIpZGdAhAIQTNB9sycou+zJOuUjFQyu9Rd/vCBcAMrh+j',
  }

  # group { 'networkrender':
  #   gid => 2001,
  # }
  # group { 'robo':
  #   gid => 1000,
  # }
  #
  # user { 'networkrender':
  #   ensure     => present,
  #   require    => Group['networkrender'],
  #   uid        => 2001,
  #   gid        => 2001,
  #   shell      => '/bin/bash',
  #   home       => '/home/networkrender',
  #   comment    => 'Network Render',
  #   managehome => true,
  # }
  # user { 'robo':
  #   ensure     => present,
  #   require    => Group['robo'],
  #   uid        => 1000,
  #   gid        => 1000,
  #   shell      => '/usr/bin/zsh',
  #   home       => '/home/robo',
  #   comment    => 'Ben Klein',
  #   managehome => false,
  # }
  #
  # file { '/home/networkrender':
  #   ensure  => directory,
  #   mode    => '0754',
  #   owner   => 'networkrender',
  #   group   => 'networkrender',
  #   require => [ User['networkrender'], Group['robo'] ],
  # }
  # file { '/home/robo':
  #   ensure  =>  directory,
  #   mode    =>  '0750',
  #   owner   =>  'robo',
  #   group   =>  'robo',
  #   require =>  [ User['robo'], Group['robo'] ],
  # }
  #
  # file { '/home/robo/.ssh':
  #   ensure  =>  directory,
  #   owner   =>  'robo',
  #   group   =>  'robo',
  #   mode    =>  '0700',
  #   require =>  File['/home/robo'],
  # }

}
