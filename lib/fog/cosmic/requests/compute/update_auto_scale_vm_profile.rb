module Fog
  module Cosmic
    class Compute

      class Real
        # Updates an existing autoscale vm profile.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateAutoScaleVmProfile.html]
        def update_auto_scale_vm_profile(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateAutoScaleVmProfile') 
          else
            options.merge!('command' => 'updateAutoScaleVmProfile', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

