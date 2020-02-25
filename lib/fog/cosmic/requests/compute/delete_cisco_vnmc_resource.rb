module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a Cisco Vnmc controller
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteCiscoVnmcResource.html]
        def delete_cisco_vnmc_resource(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteCiscoVnmcResource') 
          else
            options.merge!('command' => 'deleteCiscoVnmcResource', 
            'resourceid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

