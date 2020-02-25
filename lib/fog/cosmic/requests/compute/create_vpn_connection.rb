module Fog
  module Cosmic
    class Compute

      class Real
        # Create site to site vpn connection
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createVpnConnection.html]
        def create_vpn_connection(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createVpnConnection') 
          else
            options.merge!('command' => 'createVpnConnection', 
            's2svpngatewayid' => args[0], 
            's2scustomergatewayid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

