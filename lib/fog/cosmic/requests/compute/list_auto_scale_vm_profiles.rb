module Fog
  module Cosmic
    class Compute

      class Real
        # Lists autoscale vm profiles.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listAutoScaleVmProfiles.html]
        def list_auto_scale_vm_profiles(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listAutoScaleVmProfiles') 
          else
            options.merge!('command' => 'listAutoScaleVmProfiles')
          end
          request(options)
        end
      end

    end
  end
end

