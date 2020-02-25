module Fog
  module Cosmic
    class Compute

      class Real
        # Dedicates a zones.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/dedicateZone.html]
        def dedicate_zone(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'dedicateZone') 
          else
            options.merge!('command' => 'dedicateZone', 
            'domainid' => args[0], 
            'zoneid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

