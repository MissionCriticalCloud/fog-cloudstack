module Fog
  module Cosmic
    class Compute

      class Real
        # Puts storage pool into maintenance state
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/enableStorageMaintenance.html]
        def enable_storage_maintenance(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'enableStorageMaintenance') 
          else
            options.merge!('command' => 'enableStorageMaintenance', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

