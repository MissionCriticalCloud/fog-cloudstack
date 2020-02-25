module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all network ACL items
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNetworkACLs.html]
        def list_network_acls(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNetworkACLs') 
          else
            options.merge!('command' => 'listNetworkACLs')
          end
          request(options)
        end
      end

    end
  end
end

