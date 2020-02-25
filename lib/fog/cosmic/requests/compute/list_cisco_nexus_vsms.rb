module Fog
  module Cosmic
    class Compute

      class Real
        # Retrieves a Cisco Nexus 1000v Virtual Switch Manager device associated with a Cluster
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listCiscoNexusVSMs.html]
        def list_cisco_nexus_vsms(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listCiscoNexusVSMs') 
          else
            options.merge!('command' => 'listCiscoNexusVSMs')
          end
          request(options)
        end
      end

    end
  end
end

