module Fog
  module Cosmic
    class Compute

      class Real
        # List ucs manager
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listUcsManagers.html]
        def list_ucs_managers(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listUcsManagers') 
          else
            options.merge!('command' => 'listUcsManagers')
          end
          request(options)
        end
      end

    end
  end
end

