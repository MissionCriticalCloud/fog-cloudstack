module Fog
  module Cosmic
    class Compute

      class Real
        # List private gateways
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listPrivateGateways.html]
        def list_private_gateways(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listPrivateGateways') 
          else
            options.merge!('command' => 'listPrivateGateways')
          end
          request(options)
        end
      end

    end
  end
end

