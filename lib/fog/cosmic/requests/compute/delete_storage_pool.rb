module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a storage pool.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteStoragePool.html]
        def delete_storage_pool(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteStoragePool') 
          else
            options.merge!('command' => 'deleteStoragePool', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

