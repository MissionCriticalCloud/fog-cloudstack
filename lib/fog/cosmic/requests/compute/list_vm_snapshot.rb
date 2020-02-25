module Fog
  module Cosmic
    class Compute

      class Real
        # List virtual machine snapshot by conditions
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listVMSnapshot.html]
        def list_vm_snapshot(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listVMSnapshot')
          else
            options.merge!('command' => 'listVMSnapshot')
          end
          # add project id if we have one
          @cosmic_project_id ? options.merge!('projectid' => @cosmic_project_id) : nil
          request(options)
        end
      end

    end
  end
end

