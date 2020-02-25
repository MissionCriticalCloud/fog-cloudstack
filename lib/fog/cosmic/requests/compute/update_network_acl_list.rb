module Fog
  module Cosmic
    class Compute

      class Real
        # Updates Network ACL list
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateNetworkACLList.html]
        def update_network_acl_list(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateNetworkACLList') 
          else
            options.merge!('command' => 'updateNetworkACLList', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

