module Fog
  module Cosmic
    class Compute

      class Real
        # Activates a project
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/activateProject.html]
        def activate_project(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'activateProject') 
          else
            options.merge!('command' => 'activateProject', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

