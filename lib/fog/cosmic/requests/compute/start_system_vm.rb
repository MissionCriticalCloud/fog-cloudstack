module Fog
  module Cosmic
    class Compute

      class Real
        # Starts a system virtual machine.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/startSystemVm.html]
        def start_system_vm(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'startSystemVm') 
          else
            options.merge!('command' => 'startSystemVm', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

