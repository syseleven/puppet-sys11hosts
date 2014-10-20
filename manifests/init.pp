# Class sys11hosts
#
# export/import hosts and ips
#
class sys11hosts() {
  if $::ipaddress_eth0 {
    @@host { $::fqdn:
      ip           => $::ipaddress_eth0, 
      host_aliases => $::hostname,
    }
  }

  if $::ipaddress_vhost0 {
    @@host { $::fqdn:
      ip           => $::ipaddress_vhost0, 
      host_aliases => $::hostname,
    }
  }


  Host <<| |>>
}
