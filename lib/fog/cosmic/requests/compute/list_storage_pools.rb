module Fog
  module Cosmic
    class Compute

      class Real
        # Lists storage pools.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listStoragePools.html]
        def list_storage_pools(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listStoragePools') 
          else
            options.merge!('command' => 'listStoragePools')
          end
          request(options)
        end
      end

    end
  end
end

