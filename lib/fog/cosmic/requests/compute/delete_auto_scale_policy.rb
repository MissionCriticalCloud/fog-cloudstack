module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a autoscale policy.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteAutoScalePolicy.html]
        def delete_auto_scale_policy(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteAutoScalePolicy') 
          else
            options.merge!('command' => 'deleteAutoScalePolicy', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

