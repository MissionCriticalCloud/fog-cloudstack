module Fog
  module Cosmic
    class Compute

      class Real
        # Adds secondary storage.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addSecondaryStorage.html]
        def add_secondary_storage(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addSecondaryStorage') 
          else
            options.merge!('command' => 'addSecondaryStorage', 
            'url' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

