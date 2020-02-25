module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a Zone.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteZone.html]
        def delete_zone(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteZone') 
          else
            options.merge!('command' => 'deleteZone', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

