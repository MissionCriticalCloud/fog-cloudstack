module Fog
  module Cosmic
    class Compute

      class Real
        # Adds vpn users
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addVpnUser.html]
        def add_vpn_user(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addVpnUser') 
          else
            options.merge!('command' => 'addVpnUser', 
            'password' => args[0], 
            'username' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

