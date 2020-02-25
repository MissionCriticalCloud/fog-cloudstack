module Fog
  module Cosmic
    class Compute

      class Real
        # Updates remote access vpn
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateRemoteAccessVpn.html]
        def update_remote_access_vpn(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateRemoteAccessVpn') 
          else
            options.merge!('command' => 'updateRemoteAccessVpn', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

