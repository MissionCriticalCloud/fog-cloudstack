module Fog
  module Cosmic
    class Compute

      class Real
        # Restarts the network; includes 1) restarting network elements - virtual routers, dhcp servers 2) reapplying all public ips 3) reapplying loadBalancing/portForwarding rules
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/restartNetwork.html]
        def restart_network(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'restartNetwork') 
          else
            options.merge!('command' => 'restartNetwork', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

