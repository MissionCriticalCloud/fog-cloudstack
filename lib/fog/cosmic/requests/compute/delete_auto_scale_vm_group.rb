module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a autoscale vm group.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteAutoScaleVmGroup.html]
        def delete_auto_scale_vm_group(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteAutoScaleVmGroup') 
          else
            options.merge!('command' => 'deleteAutoScaleVmGroup', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

