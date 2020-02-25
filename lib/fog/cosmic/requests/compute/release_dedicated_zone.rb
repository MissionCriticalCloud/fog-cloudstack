module Fog
  module Cosmic
    class Compute

      class Real
        # Release dedication of zone
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/releaseDedicatedZone.html]
        def release_dedicated_zone(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'releaseDedicatedZone') 
          else
            options.merge!('command' => 'releaseDedicatedZone', 
            'zoneid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

