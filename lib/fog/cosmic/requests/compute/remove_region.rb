module Fog
  module Cosmic
    class Compute

      class Real
        # Removes specified region
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/removeRegion.html]
        def remove_region(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'removeRegion') 
          else
            options.merge!('command' => 'removeRegion', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

