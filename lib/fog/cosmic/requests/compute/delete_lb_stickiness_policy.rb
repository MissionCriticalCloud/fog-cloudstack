module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a LB stickiness policy.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteLBStickinessPolicy.html]
        def delete_lb_stickiness_policy(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteLBStickinessPolicy') 
          else
            options.merge!('command' => 'deleteLBStickinessPolicy', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

