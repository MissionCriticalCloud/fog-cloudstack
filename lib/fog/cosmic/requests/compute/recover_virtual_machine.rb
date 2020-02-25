module Fog
  module Cosmic
    class Compute

      class Real
        # Recovers a virtual machine.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/recoverVirtualMachine.html]
        def recover_virtual_machine(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'recoverVirtualMachine') 
          else
            options.merge!('command' => 'recoverVirtualMachine', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

