module Fog
  module Cosmic
    class Compute

      class Real
        # Lists OpenDyalight controllers
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listOpenDaylightControllers.html]
        def list_open_daylight_controllers(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listOpenDaylightControllers') 
          else
            options.merge!('command' => 'listOpenDaylightControllers')
          end
          request(options)
        end
      end

    end
  end
end

