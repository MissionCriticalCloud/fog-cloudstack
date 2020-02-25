module Fog
  module Cosmic
    class Compute

      class Real
        # List dedicated zones.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listDedicatedZones.html]
        def list_dedicated_zones(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listDedicatedZones') 
          else
            options.merge!('command' => 'listDedicatedZones')
          end
          request(options)
        end
      end

    end
  end
end

