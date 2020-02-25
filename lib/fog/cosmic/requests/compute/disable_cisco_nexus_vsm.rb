module Fog
  module Cosmic
    class Compute

      class Real
        # disable a Cisco Nexus VSM device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/disableCiscoNexusVSM.html]
        def disable_cisco_nexus_vsm(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'disableCiscoNexusVSM') 
          else
            options.merge!('command' => 'disableCiscoNexusVSM', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

