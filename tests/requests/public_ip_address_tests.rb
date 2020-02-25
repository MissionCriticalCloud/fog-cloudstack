Shindo.tests('Fog::Compute[:cosmic] | public ip address requests', ['cosmic']) do

  @public_ip_addresses_format = {
    'listpublicipaddressesresponse'  => {
      'count' => Integer,
      'publicipaddress' => [
        'id' => String,
        'ipaddress' => String,
        'allocated' => String,
        'zoneid' => String,
        'zonename' => String,
        'issourcenat' => Fog::Boolean,
        'projectid' => String,
        'project' => String,
        'domainid' => String,
        'domain' => String,
        'forvirtualnetwork' => Fog::Boolean,
        'isstaticnat' => Fog::Boolean,
        'issystem' => Fog::Boolean,
        'associatednetworkid' => String,
        'associatednetworkname' => String,
        'networkid' => String,
        'state' => String,
        'physicalnetworkid' => String,
        'tags' => Fog::Nullable::Array
      ]
    }
  }

  tests('success') do

    tests('#list_public_ip_addresses').formats(@public_ip_addresses_format) do
      Fog::Compute[:cosmic].list_public_ip_addresses
    end

  end

end
