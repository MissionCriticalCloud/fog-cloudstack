module Fog
  module Cosmic
    class Compute

      class Real
        # Delete site to site vpn connection
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteVpnConnection.html]
        def delete_vpn_connection(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteVpnConnection') 
          else
            options.merge!('command' => 'deleteVpnConnection', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

