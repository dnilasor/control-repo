class profile::cd4pe::host {
  class { 'cd4pe':
      cd4pe_image => 'puppet/continuous-delivery-for-puppet-enterprise',
  }
    
  service { 'discovery.service':
    ensure => stopped,
    enable => false,
    before => Class['cd4pe'],
  }
}
  
