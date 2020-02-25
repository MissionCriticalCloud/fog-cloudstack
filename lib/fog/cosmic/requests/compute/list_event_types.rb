module Fog
  module Cosmic
    class Compute

      class Real
        # List Event Types
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listEventTypes.html]
        def list_event_types(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listEventTypes') 
          else
            options.merge!('command' => 'listEventTypes')
          end
          request(options)
        end
      end

    end
  end
end

