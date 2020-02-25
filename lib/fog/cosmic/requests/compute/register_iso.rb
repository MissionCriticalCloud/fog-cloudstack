module Fog
  module Cosmic
    class Compute

      class Real
        # Registers an existing ISO into the Cosmic cloud.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/registerIso.html]
        def register_iso(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'registerIso') 
          else
            options.merge!('command' => 'registerIso', 
            'name' => args[0], 
            'displaytext' => args[1], 
            'url' => args[2], 
            'zoneid' => args[3])
          end
          request(options)
        end
      end

    end
  end
end

