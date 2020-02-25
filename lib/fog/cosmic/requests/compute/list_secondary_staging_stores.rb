module Fog
  module Cosmic
    class Compute

      class Real
        # Lists secondary staging stores.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listSecondaryStagingStores.html]
        def list_secondary_staging_stores(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listSecondaryStagingStores') 
          else
            options.merge!('command' => 'listSecondaryStagingStores')
          end
          request(options)
        end
      end

    end
  end
end

