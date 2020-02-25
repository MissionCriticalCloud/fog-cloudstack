module Fog
  module Cosmic
    class Compute

      class Real
        # list portable IP ranges
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listPortableIpRanges.html]
        def list_portable_ip_ranges(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listPortableIpRanges') 
          else
            options.merge!('command' => 'listPortableIpRanges')
          end
          request(options)
        end
      end

    end
  end
end

