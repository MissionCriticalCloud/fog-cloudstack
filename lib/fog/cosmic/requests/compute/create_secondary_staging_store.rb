module Fog
  module Cosmic
    class Compute

      class Real
        # create secondary staging store.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createSecondaryStagingStore.html]
        def create_secondary_staging_store(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createSecondaryStagingStore') 
          else
            options.merge!('command' => 'createSecondaryStagingStore', 
            'url' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

