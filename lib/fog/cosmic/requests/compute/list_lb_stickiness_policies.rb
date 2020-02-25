module Fog
  module Cosmic
    class Compute

      class Real
        # Lists LBStickiness policies.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listLBStickinessPolicies.html]
        def list_lb_stickiness_policies(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listLBStickinessPolicies') 
          else
            options.merge!('command' => 'listLBStickinessPolicies')
          end
          request(options)
        end
      end

    end
  end
end

