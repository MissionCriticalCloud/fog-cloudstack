module Fog
  module Cosmic
    class Compute

      class Real
        # Updates site to site vpn connection
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateVpnConnection.html]
        def update_vpn_connection(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateVpnConnection') 
          else
            options.merge!('command' => 'updateVpnConnection', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

