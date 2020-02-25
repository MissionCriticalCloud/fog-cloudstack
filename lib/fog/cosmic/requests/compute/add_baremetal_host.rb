module Fog
  module Cosmic
    class Compute

      class Real
        # add a baremetal host
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addBaremetalHost.html]
        def add_baremetal_host(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addBaremetalHost') 
          else
            options.merge!('command' => 'addBaremetalHost', 
            'podid' => args[0], 
            'url' => args[1], 
            'hypervisor' => args[2], 
            'username' => args[3], 
            'zoneid' => args[4], 
            'password' => args[5])
          end
          request(options)
        end
      end

    end
  end
end

