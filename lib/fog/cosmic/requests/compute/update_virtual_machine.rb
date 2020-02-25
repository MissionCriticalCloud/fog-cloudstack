module Fog
  module Cosmic
    class Compute

      class Real
        # Updates properties of a virtual machine. The VM has to be stopped and restarted for the new properties to take effect. UpdateVirtualMachine does not first check whether the VM is stopped. Therefore, stop the VM manually before issuing this call.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateVirtualMachine.html]
        def update_virtual_machine(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateVirtualMachine') 
          else
            options.merge!('command' => 'updateVirtualMachine', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

