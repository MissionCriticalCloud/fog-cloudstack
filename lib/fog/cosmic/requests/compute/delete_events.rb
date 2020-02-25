module Fog
  module Cosmic
    class Compute

      class Real
        # Delete one or more events.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteEvents.html]
        def delete_events(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteEvents') 
          else
            options.merge!('command' => 'deleteEvents')
          end
          request(options)
        end
      end

    end
  end
end

