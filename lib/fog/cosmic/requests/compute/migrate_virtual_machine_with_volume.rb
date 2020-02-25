module Fog
  module Cosmic
    class Compute

      class Real
        # Attempts Migration of a VM with its volumes to a different host
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/migrateVirtualMachineWithVolume.html]
        def migrate_virtual_machine_with_volume(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'migrateVirtualMachineWithVolume') 
          else
            options.merge!('command' => 'migrateVirtualMachineWithVolume', 
            'hostid' => args[0], 
            'virtualmachineid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

