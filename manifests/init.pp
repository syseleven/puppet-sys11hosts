# Class sys11hosts
#
# export/import hosts and ips
#
class sys11hosts() {
  @@host { $::fqdn:
    ip           => $::ipaddress_eth0, 
    host_aliases => $::hostname,
  }

  Host <<| |>>
}
