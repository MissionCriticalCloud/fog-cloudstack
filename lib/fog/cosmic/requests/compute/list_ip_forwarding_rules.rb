module Fog
  module Cosmic
    class Compute

      class Real
        # List the ip forwarding rules
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listIpForwardingRules.html]
        def list_ip_forwarding_rules(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listIpForwardingRules') 
          else
            options.merge!('command' => 'listIpForwardingRules')
          end
          request(options)
        end
      end

    end
  end
end

