module Fog
  module Cosmic
    class Compute

      class Real
        # Lists capabilities
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listCapabilities.html]
        def list_capabilities(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listCapabilities') 
          else
            options.merge!('command' => 'listCapabilities')
          end
          request(options)
        end
      end

    end
  end
end

