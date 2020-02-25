module Fog
  module Cosmic
    class Compute

      class Real
        # Returns an encrypted password for the VM
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/getVMPassword.html]
        def get_vm_password(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'getVMPassword') 
          else
            options.merge!('command' => 'getVMPassword', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

