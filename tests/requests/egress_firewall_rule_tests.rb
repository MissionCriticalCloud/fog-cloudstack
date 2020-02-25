Shindo.tests('Fog::Compute[:cosmic] | egress firewall rule requests', ['cosmic']) do

  @egress_firewall_rules_format = {
    'listegressfirewallrulesresponse'  => {
      'count' => Integer,
      'firewallrule' => [
        'id' => String,
        'protocol' => String,
        'networkid' => String,
        'state' => String,
        'cidrlist' => String,
        'tags' => Fog::Nullable::Array
      ]
    }
  }

  tests('success') do

    tests('#list_egress_firewall_rules').formats(@egress_firewall_rules_format) do
      Fog::Compute[:cosmic].list_egress_firewall_rules
    end

  end

end
