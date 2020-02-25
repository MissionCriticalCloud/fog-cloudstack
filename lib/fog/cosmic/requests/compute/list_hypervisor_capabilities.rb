module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all hypervisor capabilities.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listHypervisorCapabilities.html]
        def list_hypervisor_capabilities(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listHypervisorCapabilities') 
          else
            options.merge!('command' => 'listHypervisorCapabilities')
          end
          request(options)
        end
      end

    end
  end
end

