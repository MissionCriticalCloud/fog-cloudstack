module Fog
  module Cosmic
    class Compute

      class Real
        # List the virtual machines owned by the account.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listVirtualMachines.html]
        def list_virtual_machines(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listVirtualMachines')
          else
            options.merge!('command' => 'listVirtualMachines')
          end
          # add project id if we have one
          @cosmic_project_id ? options.merge!('projectid' => @cosmic_project_id) : nil
          request(options)
        end
      end

      class Mock
        def list_virtual_machines(options={})
          {"listvirtualmachinesresponse" =>
            {"count" => self.data[:servers].values.size, "virtualmachine" => self.data[:servers].values}}
        end
      end
    end
  end
end

