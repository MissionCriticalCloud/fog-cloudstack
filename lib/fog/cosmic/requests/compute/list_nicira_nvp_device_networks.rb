module Fog
  module Cosmic
    class Compute

      class Real
        # lists network that are using a nicira nvp device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNiciraNvpDeviceNetworks.html]
        def list_nicira_nvp_device_networks(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNiciraNvpDeviceNetworks') 
          else
            options.merge!('command' => 'listNiciraNvpDeviceNetworks', 
            'nvpdeviceid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

