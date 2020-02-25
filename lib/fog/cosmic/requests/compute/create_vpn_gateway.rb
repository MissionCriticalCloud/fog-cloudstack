module Fog
  module Cosmic
    class Compute

      class Real
        # Creates site to site vpn local gateway
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createVpnGateway.html]
        def create_vpn_gateway(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createVpnGateway') 
          else
            options.merge!('command' => 'createVpnGateway', 
            'vpcid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

