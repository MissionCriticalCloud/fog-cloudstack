module Fog
  module Cosmic
    class Compute

      class Real
        #  delete a Cisco Nexus VSM device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteCiscoNexusVSM.html]
        def delete_cisco_nexus_vsm(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteCiscoNexusVSM') 
          else
            options.merge!('command' => 'deleteCiscoNexusVSM', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

