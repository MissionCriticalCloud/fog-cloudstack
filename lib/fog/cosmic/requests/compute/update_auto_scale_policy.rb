module Fog
  module Cosmic
    class Compute

      class Real
        # Updates an existing autoscale policy.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateAutoScalePolicy.html]
        def update_auto_scale_policy(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateAutoScalePolicy') 
          else
            options.merge!('command' => 'updateAutoScalePolicy', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

