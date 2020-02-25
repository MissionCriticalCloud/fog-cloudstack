module Fog
  module Cosmic
    class Compute

      class Real
        # Revert VM from a vmsnapshot.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/revertToVMSnapshot.html]
        def revert_to_vm_snapshot(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'revertToVMSnapshot') 
          else
            options.merge!('command' => 'revertToVMSnapshot', 
            'vmsnapshotid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

