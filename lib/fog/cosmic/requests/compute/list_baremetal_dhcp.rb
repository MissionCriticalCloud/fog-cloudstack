module Fog
  module Cosmic
    class Compute

      class Real
        # list baremetal dhcp servers
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listBaremetalDhcp.html]
        def list_baremetal_dhcp(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listBaremetalDhcp') 
          else
            options.merge!('command' => 'listBaremetalDhcp')
          end
          request(options)
        end
      end

    end
  end
end

