module Fog
  module Cosmic
    class Compute

      class Real
        # Releases a Public IP range back to the system pool
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/releasePublicIpRange.html]
        def release_public_ip_range(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'releasePublicIpRange') 
          else
            options.merge!('command' => 'releasePublicIpRange', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

