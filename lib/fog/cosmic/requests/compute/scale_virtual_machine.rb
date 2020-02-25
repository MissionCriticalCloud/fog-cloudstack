module Fog
  module Cosmic
    class Compute

      class Real
        # Scales the virtual machine to a new service offering.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/scaleVirtualMachine.html]
        def scale_virtual_machine(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'scaleVirtualMachine') 
          else
            options.merge!('command' => 'scaleVirtualMachine', 
            'serviceofferingid' => args[0], 
            'id' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

