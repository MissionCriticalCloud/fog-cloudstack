module Fog
  module Cosmic
    class Compute

      class Real
        # Lists hosts.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listHosts.html]
        def list_hosts(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listHosts') 
          else
            options.merge!('command' => 'listHosts')
          end
          request(options)
        end
      end

    end
  end
end

