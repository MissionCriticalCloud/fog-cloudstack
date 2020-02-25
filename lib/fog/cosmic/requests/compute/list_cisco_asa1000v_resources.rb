module Fog
  module Cosmic
    class Compute

      class Real
        # Lists Cisco ASA 1000v appliances
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listCiscoAsa1000vResources.html]
        def list_cisco_asa1000v_resources(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listCiscoAsa1000vResources') 
          else
            options.merge!('command' => 'listCiscoAsa1000vResources')
          end
          request(options)
        end
      end

    end
  end
end

