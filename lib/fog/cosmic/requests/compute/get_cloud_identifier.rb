module Fog
  module Cosmic
    class Compute

      class Real
        # Retrieves a cloud identifier.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/getCloudIdentifier.html]
        def get_cloud_identifier(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'getCloudIdentifier') 
          else
            options.merge!('command' => 'getCloudIdentifier', 
            'userid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

