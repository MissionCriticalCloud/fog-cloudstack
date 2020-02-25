module Fog
  module Cosmic
    class Compute

      class Real
        # adds a range of portable public IP's to a region
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createPortableIpRange.html]
        def create_portable_ip_range(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createPortableIpRange') 
          else
            options.merge!('command' => 'createPortableIpRange', 
            'startip' => args[0], 
            'netmask' => args[1], 
            'regionid' => args[2], 
            'gateway' => args[3], 
            'endip' => args[4])
          end
          request(options)
        end
      end

    end
  end
end

