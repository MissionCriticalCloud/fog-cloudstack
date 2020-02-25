module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a physical network
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updatePhysicalNetwork.html]
        def update_physical_network(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updatePhysicalNetwork') 
          else
            options.merge!('command' => 'updatePhysicalNetwork', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

