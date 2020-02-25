module Fog
  module Cosmic
    class Compute

      class Real
        # Lists physical networks
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listPhysicalNetworks.html]
        def list_physical_networks(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listPhysicalNetworks') 
          else
            options.merge!('command' => 'listPhysicalNetworks')
          end
          request(options)
        end
      end

    end
  end
end

