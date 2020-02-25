module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a autoscale vm profile.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteAutoScaleVmProfile.html]
        def delete_auto_scale_vm_profile(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteAutoScaleVmProfile') 
          else
            options.merge!('command' => 'deleteAutoScaleVmProfile', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

