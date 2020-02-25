module Fog
  module Cosmic
    class Compute

      class Real
        # List the counters
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listCounters.html]
        def list_counters(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listCounters') 
          else
            options.merge!('command' => 'listCounters')
          end
          request(options)
        end
      end

    end
  end
end

