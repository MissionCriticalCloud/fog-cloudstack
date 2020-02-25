module Fog
  module Cosmic
    class Compute

      class Real
        # Change ownership of a VM from one account to another. A root administrator can reassign a VM from any account to any other account in any domain. A domain administrator can reassign a VM to any account in the same domain.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/assignVirtualMachine.html]
        def assign_virtual_machine(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'assignVirtualMachine') 
          else
            options.merge!('command' => 'assignVirtualMachine', 
            'account' => args[0], 
            'virtualmachineid' => args[1], 
            'domainid' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

