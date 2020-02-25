module Fog
  module Cosmic
    class Compute

      class Real
        # Disables an AutoScale Vm Group
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/disableAutoScaleVmGroup.html]
        def disable_auto_scale_vm_group(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'disableAutoScaleVmGroup') 
          else
            options.merge!('command' => 'disableAutoScaleVmGroup', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

