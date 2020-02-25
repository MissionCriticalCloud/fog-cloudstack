module Fog
  module Cosmic
    class Compute

      class Real
        # Adds VM to specified network by creating a NIC
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addNicToVirtualMachine.html]
        def add_nic_to_virtual_machine(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addNicToVirtualMachine') 
          else
            options.merge!('command' => 'addNicToVirtualMachine', 
            'virtualmachineid' => args[0], 
            'networkid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

