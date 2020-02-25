module Fog
  module Cosmic
    class Compute

      class Real
        # Delete one or more alerts.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteAlerts.html]
        def delete_alerts(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteAlerts') 
          else
            options.merge!('command' => 'deleteAlerts')
          end
          request(options)
        end
      end

    end
  end
end

