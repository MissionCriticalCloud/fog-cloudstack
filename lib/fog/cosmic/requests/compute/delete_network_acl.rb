module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a Network ACL
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteNetworkACL.html]
        def delete_network_acl(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteNetworkACL') 
          else
            options.merge!('command' => 'deleteNetworkACL', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

