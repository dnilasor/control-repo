class role::cd4pe {
  include profile::cd4pe::host
  include profile::firewalld::firewall
}
