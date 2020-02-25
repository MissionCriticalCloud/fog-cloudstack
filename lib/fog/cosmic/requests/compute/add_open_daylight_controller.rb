module Fog
  module Cosmic
    class Compute

      class Real
        # Adds an OpenDyalight controler
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addOpenDaylightController.html]
        def add_open_daylight_controller(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addOpenDaylightController') 
          else
            options.merge!('command' => 'addOpenDaylightController', 
            'physicalnetworkid' => args[0], 
            'url' => args[1], 
            'password' => args[2], 
            'username' => args[3])
          end
          request(options)
        end
      end

    end
  end
end

