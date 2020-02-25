module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a service offering.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateServiceOffering.html]
        def update_service_offering(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateServiceOffering') 
          else
            options.merge!('command' => 'updateServiceOffering', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

