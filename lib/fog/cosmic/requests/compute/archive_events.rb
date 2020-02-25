module Fog
  module Cosmic
    class Compute

      class Real
        # Archive one or more events.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/archiveEvents.html]
        def archive_events(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'archiveEvents') 
          else
            options.merge!('command' => 'archiveEvents')
          end
          request(options)
        end
      end

    end
  end
end

