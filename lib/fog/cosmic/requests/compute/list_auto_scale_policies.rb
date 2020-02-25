module Fog
  module Cosmic
    class Compute

      class Real
        # Lists autoscale policies.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listAutoScalePolicies.html]
        def list_auto_scale_policies(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listAutoScalePolicies') 
          else
            options.merge!('command' => 'listAutoScalePolicies')
          end
          request(options)
        end
      end

    end
  end
end

