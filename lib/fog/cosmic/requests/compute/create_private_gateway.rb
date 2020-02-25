module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a private gateway
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createPrivateGateway.html]
        def create_private_gateway(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createPrivateGateway') 
          else
            options.merge!('command' => 'createPrivateGateway', 
            'ipaddress' => args[0], 
            'vlan' => args[1], 
            'netmask' => args[2], 
            'vpcid' => args[3], 
            'gateway' => args[4])
          end
          request(options)
        end
      end

    end
  end
end

