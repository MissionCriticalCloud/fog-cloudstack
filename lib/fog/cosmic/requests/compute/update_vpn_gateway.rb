module Fog
  module Cosmic
    class Compute

      class Real
        # Updates site to site vpn local gateway
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateVpnGateway.html]
        def update_vpn_gateway(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateVpnGateway') 
          else
            options.merge!('command' => 'updateVpnGateway', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

