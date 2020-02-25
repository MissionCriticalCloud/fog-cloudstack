module Fog
  module Cosmic
    class Compute

      class Real
        # List network devices
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNetworkDevice.html]
        def list_network_device(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNetworkDevice') 
          else
            options.merge!('command' => 'listNetworkDevice')
          end
          request(options)
        end
      end

    end
  end
end

