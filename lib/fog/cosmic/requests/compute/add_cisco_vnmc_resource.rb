module Fog
  module Cosmic
    class Compute

      class Real
        # Adds a Cisco Vnmc Controller
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addCiscoVnmcResource.html]
        def add_cisco_vnmc_resource(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addCiscoVnmcResource') 
          else
            options.merge!('command' => 'addCiscoVnmcResource', 
            'username' => args[0], 
            'hostname' => args[1], 
            'password' => args[2], 
            'physicalnetworkid' => args[3])
          end
          request(options)
        end
      end

    end
  end
end

