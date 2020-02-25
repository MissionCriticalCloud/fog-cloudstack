module Fog
  module Cosmic
    class Compute

      class Real
        # A command to list events.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listEvents.html]
        def list_events(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listEvents') 
          else
            options.merge!('command' => 'listEvents')
          end
          request(options)
        end
      end

    end
  end
end

