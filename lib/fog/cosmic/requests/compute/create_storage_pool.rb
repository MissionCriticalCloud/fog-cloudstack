module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a storage pool.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createStoragePool.html]
        def create_storage_pool(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createStoragePool') 
          else
            options.merge!('command' => 'createStoragePool', 
            'url' => args[0], 
            'name' => args[1], 
            'zoneid' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

