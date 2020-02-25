module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a hypervisor capabilities.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateHypervisorCapabilities.html]
        def update_hypervisor_capabilities(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateHypervisorCapabilities') 
          else
            options.merge!('command' => 'updateHypervisorCapabilities')
          end
          request(options)
        end
      end

    end
  end
end

