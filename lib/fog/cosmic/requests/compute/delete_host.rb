module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a host.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteHost.html]
        def delete_host(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteHost') 
          else
            options.merge!('command' => 'deleteHost', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

