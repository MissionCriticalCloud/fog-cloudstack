module Fog
  module Cosmic
    class Compute

      class Real
        # Updates an ip address
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateIpAddress.html]
        def update_ip_address(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateIpAddress') 
          else
            options.merge!('command' => 'updateIpAddress', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

