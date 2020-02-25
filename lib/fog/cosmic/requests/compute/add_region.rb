module Fog
  module Cosmic
    class Compute

      class Real
        # Adds a Region
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addRegion.html]
        def add_region(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addRegion') 
          else
            options.merge!('command' => 'addRegion', 
            'id' => args[0], 
            'name' => args[1], 
            'endpoint' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

