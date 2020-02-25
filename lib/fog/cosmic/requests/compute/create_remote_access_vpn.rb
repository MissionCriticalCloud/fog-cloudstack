module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a l2tp/ipsec remote access vpn
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createRemoteAccessVpn.html]
        def create_remote_access_vpn(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createRemoteAccessVpn') 
          else
            options.merge!('command' => 'createRemoteAccessVpn', 
            'publicipid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

