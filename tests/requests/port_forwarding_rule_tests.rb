Shindo.tests('Fog::Compute[:cosmic] | port forwarding rule requests', ['cosmic']) do

  @port_forwarding_rule_format = {
    'listportforwardingrulesresponse'  => {
      'count' => Integer,
      'portforwardingrule' => [
        'id' => String,
        'privateport' => String,
        'privateendport' => String,
        'protocol' => String,
        'publicport' => String,
        'publicendport' => String,
        'virtualmachineid' => String,
        'virtualmachinename' => String,
        'virtualmachinedisplayname' => String,
        'ipaddressid' => String,
        'ipaddress' => String,
        'state' => String,
        'cidrlist' => String,
        'tags' => Fog::Nullable::Array
      ]
    }
  }

  tests('success') do

    tests('#list_port_forwarding_rules').formats(@port_forwarding_rule_format) do
      Fog::Compute[:cosmic].list_port_forwarding_rules('zoneid' => 1)
    end

  end

end
