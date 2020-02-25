module Fog
  module Cosmic
    class Compute

      class Real
        # List iso visibility and all accounts that have permissions to view this iso.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listIsoPermissions.html]
        def list_iso_permissions(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listIsoPermissions') 
          else
            options.merge!('command' => 'listIsoPermissions', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

