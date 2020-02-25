module Fog
  module Cosmic
    class Compute

      class Real
        # Lists vpn users
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listVpnUsers.html]
        def list_vpn_users(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listVpnUsers') 
          else
            options.merge!('command' => 'listVpnUsers')
          end
          request(options)
        end
      end

    end
  end
end

