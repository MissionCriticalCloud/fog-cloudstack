module Fog
  module Cosmic
    class Compute

      class Real
        # Removes vpn user
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/removeVpnUser.html]
        def remove_vpn_user(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'removeVpnUser') 
          else
            options.merge!('command' => 'removeVpnUser', 
            'username' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

