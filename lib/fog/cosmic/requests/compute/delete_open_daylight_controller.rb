module Fog
  module Cosmic
    class Compute

      class Real
        # Removes an OpenDyalight controler
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteOpenDaylightController.html]
        def delete_open_daylight_controller(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteOpenDaylightController') 
          else
            options.merge!('command' => 'deleteOpenDaylightController', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

