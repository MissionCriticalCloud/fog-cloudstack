module Fog
  module Cosmic
    class Compute

      class Real
        # Lists storage pools available for migration of a volume.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/findStoragePoolsForMigration.html]
        def find_storage_pools_for_migration(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'findStoragePoolsForMigration') 
          else
            options.merge!('command' => 'findStoragePoolsForMigration', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

