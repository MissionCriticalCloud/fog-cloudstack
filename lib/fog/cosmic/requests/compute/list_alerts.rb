module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all alerts.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listAlerts.html]
        def list_alerts(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listAlerts') 
          else
            options.merge!('command' => 'listAlerts')
          end
          request(options)
        end
      end

    end
  end
end

