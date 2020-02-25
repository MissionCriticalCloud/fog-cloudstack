module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a VLAN IP range.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createVlanIpRange.html]
        def create_vlan_ip_range(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createVlanIpRange') 
          else
            options.merge!('command' => 'createVlanIpRange')
          end
          request(options)
        end
      end

    end
  end
end

