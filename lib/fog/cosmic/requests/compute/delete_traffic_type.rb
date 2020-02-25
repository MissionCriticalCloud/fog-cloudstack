module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes traffic type of a physical network
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteTrafficType.html]
        def delete_traffic_type(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteTrafficType') 
          else
            options.merge!('command' => 'deleteTrafficType', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

