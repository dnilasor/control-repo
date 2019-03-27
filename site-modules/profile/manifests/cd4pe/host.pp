class profile::cd4pe::host (
  ) {
    contain cd4pe

    service { 'discovery.service':
      ensure => stopped,
      enable => false,
      before => Class['cd4pe'],
    }
  }
  
