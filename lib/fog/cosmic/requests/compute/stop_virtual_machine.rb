module Fog
  module Cosmic
    class Compute

      class Real
        # Stops a virtual machine.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/stopVirtualMachine.html]
        def stop_virtual_machine(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'stopVirtualMachine') 
          else
            options.merge!('command' => 'stopVirtualMachine', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

