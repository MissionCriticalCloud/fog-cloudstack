module Fog
  module Cosmic
    class Compute

      class Real
        # Lists Nicira NVP devices
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNiciraNvpDevices.html]
        def list_nicira_nvp_devices(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNiciraNvpDevices') 
          else
            options.merge!('command' => 'listNiciraNvpDevices')
          end
          request(options)
        end
      end

    end
  end
end

