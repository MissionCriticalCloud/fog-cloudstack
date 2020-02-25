module Fog
  module Cosmic
    class Compute

      class Real
        # Updates LB Stickiness policy
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateLBStickinessPolicy.html]
        def update_lb_stickiness_policy(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateLBStickinessPolicy') 
          else
            options.merge!('command' => 'updateLBStickinessPolicy', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

