module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a service offering.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteServiceOffering.html]
        def delete_service_offering(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteServiceOffering')
          else
            options.merge!('command' => 'deleteServiceOffering',
            'id' => args[0])
          end
          request(options)
        end
      end

      class Mock
        def delete_service_offering(options={})
          service_offering_id = options['id']
          data[:favours].delete(service_offering_id) if data[:flavours][service_offering_id]

          { 'deleteserviceofferingresponse' => { 'success' => 'true' } }
        end
      end

    end
  end
end

