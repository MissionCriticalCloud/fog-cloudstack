module Fog
  module Cosmic
    class Compute

      class Real
        # List template visibility and all accounts that have permissions to view this template.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listTemplatePermissions.html]
        def list_template_permissions(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listTemplatePermissions') 
          else
            options.merge!('command' => 'listTemplatePermissions', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

