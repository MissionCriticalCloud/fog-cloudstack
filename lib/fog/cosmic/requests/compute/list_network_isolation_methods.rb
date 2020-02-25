module Fog
  module Cosmic
    class Compute

      class Real
        # Lists supported methods of network isolation
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNetworkIsolationMethods.html]
        def list_network_isolation_methods(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNetworkIsolationMethods') 
          else
            options.merge!('command' => 'listNetworkIsolationMethods')
          end
          request(options)
        end
      end

    end
  end
end

