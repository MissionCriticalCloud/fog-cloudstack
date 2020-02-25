module Fog
  module Cosmic
    class Compute

      class Real
        # Updates an existing autoscale vm group.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateAutoScaleVmGroup.html]
        def update_auto_scale_vm_group(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateAutoScaleVmGroup') 
          else
            options.merge!('command' => 'updateAutoScaleVmGroup', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

