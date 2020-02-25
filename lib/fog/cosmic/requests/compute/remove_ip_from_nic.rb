module Fog
  module Cosmic
    class Compute

      class Real
        # Removes secondary IP from the NIC.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/removeIpFromNic.html]
        def remove_ip_from_nic(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'removeIpFromNic') 
          else
            options.merge!('command' => 'removeIpFromNic', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

