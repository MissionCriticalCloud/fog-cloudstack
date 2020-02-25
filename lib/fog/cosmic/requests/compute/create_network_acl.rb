module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a ACL rule in the given network (the network has to belong to VPC)
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createNetworkACL.html]
        def create_network_acl(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createNetworkACL') 
          else
            options.merge!('command' => 'createNetworkACL', 
            'protocol' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

