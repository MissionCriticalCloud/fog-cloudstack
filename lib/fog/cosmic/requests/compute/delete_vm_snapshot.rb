module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a vmsnapshot.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteVMSnapshot.html]
        def delete_vm_snapshot(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteVMSnapshot') 
          else
            options.merge!('command' => 'deleteVMSnapshot', 
            'vmsnapshotid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

