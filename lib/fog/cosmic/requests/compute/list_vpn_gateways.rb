module Fog
  module Cosmic
    class Compute

      class Real
        # Lists site 2 site vpn gateways
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listVpnGateways.html]
        def list_vpn_gateways(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listVpnGateways') 
          else
            options.merge!('command' => 'listVpnGateways')
          end
          request(options)
        end
      end

    end
  end
end

