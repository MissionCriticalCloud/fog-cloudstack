module Fog
  module Cosmic
    class Compute

      class Real
        # Enable a Cisco Nexus VSM device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/enableCiscoNexusVSM.html]
        def enable_cisco_nexus_vsm(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'enableCiscoNexusVSM') 
          else
            options.merge!('command' => 'enableCiscoNexusVSM', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

