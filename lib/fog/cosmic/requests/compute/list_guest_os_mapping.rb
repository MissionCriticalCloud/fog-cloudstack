module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all available OS mappings for given hypervisor
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listGuestOsMapping.html]
        def list_guest_os_mapping(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listGuestOsMapping') 
          else
            options.merge!('command' => 'listGuestOsMapping')
          end
          request(options)
        end
      end

    end
  end
end

