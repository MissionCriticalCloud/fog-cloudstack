module Fog
  module Cosmic
    class Compute

      class Real
        # Updates the information about Guest OS to Hypervisor specific name mapping
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateGuestOsMapping.html]
        def update_guest_os_mapping(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateGuestOsMapping') 
          else
            options.merge!('command' => 'updateGuestOsMapping', 
            'osnameforhypervisor' => args[0], 
            'id' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

