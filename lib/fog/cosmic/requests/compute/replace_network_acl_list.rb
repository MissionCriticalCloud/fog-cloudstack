module Fog
  module Cosmic
    class Compute

      class Real
        # Replaces ACL associated with a Network or private gateway
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/replaceNetworkACLList.html]
        def replace_network_acl_list(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'replaceNetworkACLList') 
          else
            options.merge!('command' => 'replaceNetworkACLList', 
            'aclid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

