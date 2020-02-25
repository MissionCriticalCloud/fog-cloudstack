module Fog
  module Cosmic
    class Compute

      class Real
        # Upgrades domain router to a new service offering
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/changeServiceForRouter.html]
        def change_service_for_router(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'changeServiceForRouter') 
          else
            options.merge!('command' => 'changeServiceForRouter', 
            'serviceofferingid' => args[0], 
            'id' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

