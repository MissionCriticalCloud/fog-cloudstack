module Fog
  module Cosmic
    class Compute

      class Real
        # Adds a BigSwitch VNS device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addBigSwitchVnsDevice.html]
        def add_big_switch_vns_device(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addBigSwitchVnsDevice') 
          else
            options.merge!('command' => 'addBigSwitchVnsDevice', 
            'hostname' => args[0], 
            'physicalnetworkid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

