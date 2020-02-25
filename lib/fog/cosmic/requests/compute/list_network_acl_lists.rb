module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all network ACLs
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNetworkACLLists.html]
        def list_network_acl_lists(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNetworkACLLists') 
          else
            options.merge!('command' => 'listNetworkACLLists')
          end
          request(options)
        end
      end

    end
  end
end

