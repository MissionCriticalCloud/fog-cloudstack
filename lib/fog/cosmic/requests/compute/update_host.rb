module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a host.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateHost.html]
        def update_host(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateHost') 
          else
            options.merge!('command' => 'updateHost', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

