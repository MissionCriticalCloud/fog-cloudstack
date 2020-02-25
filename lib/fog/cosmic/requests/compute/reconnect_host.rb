module Fog
  module Cosmic
    class Compute

      class Real
        # Reconnects a host.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/reconnectHost.html]
        def reconnect_host(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'reconnectHost') 
          else
            options.merge!('command' => 'reconnectHost', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

