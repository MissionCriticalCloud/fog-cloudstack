module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a project
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createProject.html]
        def create_project(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createProject') 
          else
            options.merge!('command' => 'createProject', 
            'displaytext' => args[0], 
            'name' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

