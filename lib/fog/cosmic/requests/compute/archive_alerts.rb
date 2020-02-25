module Fog
  module Cosmic
    class Compute

      class Real
        # Archive one or more alerts.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/archiveAlerts.html]
        def archive_alerts(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'archiveAlerts') 
          else
            options.merge!('command' => 'archiveAlerts')
          end
          request(options)
        end
      end

    end
  end
end

