# Class sys11hosts
#
# export/import hosts and ips
#
class sys11hosts(
  $interface = false,
) {
  if $interface {
    $ipaddress_fact = "::ipaddress_$interface"
    $ipaddress = inline_template('<%= scope.lookupvar(ipaddress_fact) %>')
    if $ipaddress {
      @@host { $::fqdn:
        ip           => $::ipaddress,
        host_aliases => $::hostname,
      }
    }
  } else {
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
  }


  Host <<| |>>
}
