module Fog
  module Cosmic
    class Compute

      class Real
        # Lists site to site vpn connection gateways
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listVpnConnections.html]
        def list_vpn_connections(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listVpnConnections') 
          else
            options.merge!('command' => 'listVpnConnections')
          end
          request(options)
        end
      end

    end
  end
end

