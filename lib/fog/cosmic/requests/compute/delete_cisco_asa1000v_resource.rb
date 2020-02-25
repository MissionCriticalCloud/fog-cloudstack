module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a Cisco ASA 1000v appliance
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteCiscoAsa1000vResource.html]
        def delete_cisco_asa1000v_resource(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteCiscoAsa1000vResource') 
          else
            options.merge!('command' => 'deleteCiscoAsa1000vResource', 
            'resourceid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

