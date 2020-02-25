module Fog
  module Cosmic
    class Compute

      class Real
        # Cancels maintenance for primary storage
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/cancelStorageMaintenance.html]
        def cancel_storage_maintenance(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'cancelStorageMaintenance') 
          else
            options.merge!('command' => 'cancelStorageMaintenance', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

