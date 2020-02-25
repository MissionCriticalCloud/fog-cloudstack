module Fog
  module Cosmic
    class Compute

      class Real
        # List traffic monitor Hosts.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listTrafficMonitors.html]
        def list_traffic_monitors(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listTrafficMonitors') 
          else
            options.merge!('command' => 'listTrafficMonitors', 
            'zoneid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

