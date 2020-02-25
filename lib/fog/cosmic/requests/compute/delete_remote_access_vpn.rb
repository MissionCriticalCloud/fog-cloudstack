module Fog
  module Cosmic
    class Compute

      class Real
        # Destroys a l2tp/ipsec remote access vpn
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteRemoteAccessVpn.html]
        def delete_remote_access_vpn(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteRemoteAccessVpn') 
          else
            options.merge!('command' => 'deleteRemoteAccessVpn', 
            'publicipid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

