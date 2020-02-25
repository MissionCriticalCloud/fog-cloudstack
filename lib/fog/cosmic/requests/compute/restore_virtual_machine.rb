module Fog
  module Cosmic
    class Compute

      class Real
        # Restore a VM to original template/ISO or new template/ISO
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/restoreVirtualMachine.html]
        def restore_virtual_machine(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'restoreVirtualMachine') 
          else
            options.merge!('command' => 'restoreVirtualMachine', 
            'virtualmachineid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

