module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a project
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateProject.html]
        def update_project(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateProject') 
          else
            options.merge!('command' => 'updateProject', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

