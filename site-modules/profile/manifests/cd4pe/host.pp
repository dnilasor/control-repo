class profile::cd4pe::host {
  include ::firewalld

  class { 'cd4pe':
      cd4pe_image => 'puppet/continuous-delivery-for-puppet-enterprise',
  }
    
  service { 'discovery.service':
    ensure => stopped,
    enable => false,
    before => Class['cd4pe'],
  }
  
  firewalld_rich_rule {'allow cd4pe traffic':
    ensure => present,
    zone => 'public',
    source => '172.20.0.3/16',
    action => 'accept',
  }
}
  
