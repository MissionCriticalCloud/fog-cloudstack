module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes an ip forwarding rule
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteIpForwardingRule.html]
        def delete_ip_forwarding_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteIpForwardingRule') 
          else
            options.merge!('command' => 'deleteIpForwardingRule', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

