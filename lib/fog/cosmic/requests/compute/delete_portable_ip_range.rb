module Fog
  module Cosmic
    class Compute

      class Real
        # deletes a range of portable public IP's associated with a region
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deletePortableIpRange.html]
        def delete_portable_ip_range(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deletePortableIpRange') 
          else
            options.merge!('command' => 'deletePortableIpRange', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

