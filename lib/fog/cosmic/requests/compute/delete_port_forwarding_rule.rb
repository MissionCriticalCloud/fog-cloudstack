module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a port forwarding rule
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deletePortForwardingRule.html]
        def delete_port_forwarding_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deletePortForwardingRule') 
          else
            options.merge!('command' => 'deletePortForwardingRule', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

