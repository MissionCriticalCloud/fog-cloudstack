module Fog
  module Cosmic
    class Compute

      class Real
        # Lists VPC offerings
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listVPCOfferings.html]
        def list_vpc_offerings(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listVPCOfferings') 
          else
            options.merge!('command' => 'listVPCOfferings')
          end
          request(options)
        end
      end

    end
  end
end

