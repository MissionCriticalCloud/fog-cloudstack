module Fog
  module Cosmic
    class Compute

      class Real
        # Lists autoscale vm groups.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listAutoScaleVmGroups.html]
        def list_auto_scale_vm_groups(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listAutoScaleVmGroups') 
          else
            options.merge!('command' => 'listAutoScaleVmGroups')
          end
          request(options)
        end
      end

    end
  end
end

