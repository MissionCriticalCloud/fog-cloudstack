module Fog
  module Cosmic
    class Compute

      class Real
        # Migrate volume
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/migrateVolume.html]
        def migrate_volume(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'migrateVolume') 
          else
            options.merge!('command' => 'migrateVolume', 
            'storageid' => args[0], 
            'volumeid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

