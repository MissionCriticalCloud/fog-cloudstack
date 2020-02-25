module Fog
  module Cosmic
    class Compute

      class Real
        # List system virtual machines.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listSystemVms.html]
        def list_system_vms(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listSystemVms') 
          else
            options.merge!('command' => 'listSystemVms')
          end
          request(options)
        end
      end

    end
  end
end

