module Fog
  module Cosmic
    class Compute

      class Real
        # Dedicates a Pod.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/dedicatePod.html]
        def dedicate_pod(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'dedicatePod') 
          else
            options.merge!('command' => 'dedicatePod', 
            'podid' => args[0], 
            'domainid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

