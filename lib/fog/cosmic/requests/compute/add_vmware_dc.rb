module Fog
  module Cosmic
    class Compute

      class Real
        # Adds a VMware datacenter to specified zone
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addVmwareDc.html]
        def add_vmware_dc(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addVmwareDc') 
          else
            options.merge!('command' => 'addVmwareDc', 
            'zoneid' => args[0], 
            'vcenter' => args[1], 
            'name' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

