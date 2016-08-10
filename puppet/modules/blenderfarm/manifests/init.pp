
class blenderfarm {
  include blenderfarm::users
  include blenderfarm::blender

}

node default {
  include blenderfarm
}

node 'jabba-masta-00.knoxschools.ad' {

  class { 'puppetdb': }
  class { 'puppetdb::master::config': }

  # Configure Apache
  # Ensure it does *not* purge configuration files
  class { 'apache':
    purge_configs => false,
    mpm_module    => 'prefork',
    default_vhost => true,
    default_mods  => false,
  }

  class { 'apache::mod::wsgi': }

  # Configure Puppetboard
  class { 'puppetboard':
    manage_git        => true,
    manage_virtualenv => true,
    reports_count     => 40,
  }

  # Access Puppetboard from example.com/puppetboard
  class { 'puppetboard::apache::conf': }

}
