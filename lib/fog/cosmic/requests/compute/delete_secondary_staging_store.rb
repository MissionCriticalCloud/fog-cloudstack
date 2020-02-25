module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a secondary staging store .
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteSecondaryStagingStore.html]
        def delete_secondary_staging_store(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteSecondaryStagingStore') 
          else
            options.merge!('command' => 'deleteSecondaryStagingStore', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

