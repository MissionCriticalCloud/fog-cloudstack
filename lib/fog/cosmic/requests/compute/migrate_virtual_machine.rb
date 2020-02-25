module Fog
  module Cosmic
    class Compute

      class Real
        # Attempts Migration of a VM to a different host or Root volume of the vm to a different storage pool
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/migrateVirtualMachine.html]
        def migrate_virtual_machine(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'migrateVirtualMachine') 
          else
            options.merge!('command' => 'migrateVirtualMachine', 
            'virtualmachineid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

