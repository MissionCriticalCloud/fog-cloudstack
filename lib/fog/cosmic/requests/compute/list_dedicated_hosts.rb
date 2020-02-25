module Fog
  module Cosmic
    class Compute

      class Real
        # Lists dedicated hosts.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listDedicatedHosts.html]
        def list_dedicated_hosts(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listDedicatedHosts') 
          else
            options.merge!('command' => 'listDedicatedHosts')
          end
          request(options)
        end
      end

    end
  end
end

