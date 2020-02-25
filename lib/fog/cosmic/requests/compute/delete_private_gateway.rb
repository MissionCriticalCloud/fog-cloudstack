module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a Private gateway
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deletePrivateGateway.html]
        def delete_private_gateway(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deletePrivateGateway') 
          else
            options.merge!('command' => 'deletePrivateGateway', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

