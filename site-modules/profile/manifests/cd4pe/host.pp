class profile::cd4pe::host (
  ) {
    include cd4pe

    class { 'discovery_stopped':
      service { 'discovery.service:
        enable => false,
      }
    }
    }
  
