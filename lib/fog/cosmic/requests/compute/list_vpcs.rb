module Fog
  module Cosmic
    class Compute

      class Real
        # Lists VPCs
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listVPCs.html]
        def list_vpcs(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listVPCs') 
          else
            options.merge!('command' => 'listVPCs')
          end
          request(options)
        end
      end

    end
  end
end

