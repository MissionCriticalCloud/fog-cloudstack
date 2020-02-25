module Fog
  module Cosmic
    class Compute

      class Real
        # Adds a Nicira NVP device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addNiciraNvpDevice.html]
        def add_nicira_nvp_device(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addNiciraNvpDevice') 
          else
            options.merge!('command' => 'addNiciraNvpDevice', 
            'physicalnetworkid' => args[0], 
            'transportzoneuuid' => args[1], 
            'username' => args[2], 
            'password' => args[3], 
            'hostname' => args[4])
          end
          request(options)
        end
      end

    end
  end
end

