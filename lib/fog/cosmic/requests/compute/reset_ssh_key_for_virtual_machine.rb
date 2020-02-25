module Fog
  module Cosmic
    class Compute

      class Real
        # Resets the SSH Key for virtual machine. The virtual machine must be in a "Stopped" state. [async]
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/resetSSHKeyForVirtualMachine.html]
        def reset_ssh_key_for_virtual_machine(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'resetSSHKeyForVirtualMachine')
          else
            options.merge!('command' => 'resetSSHKeyForVirtualMachine',
            'id' => args[0],
            'keypair' => args[1])
          end
          # add project id if we have one
          @cosmic_project_id ? options.merge!('projectid' => @cosmic_project_id) : nil
          request(options)
        end
      end

    end
  end
end

