module Fog
  module Cosmic
    class Compute

      class Real
        # Updates iso permissions
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateIsoPermissions.html]
        def update_iso_permissions(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateIsoPermissions') 
          else
            options.merge!('command' => 'updateIsoPermissions', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

