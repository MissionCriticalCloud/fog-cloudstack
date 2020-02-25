module Fog
  module Cosmic
    class Compute

      class Real
        # Lists vm groups
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listInstanceGroups.html]
        def list_instance_groups(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listInstanceGroups') 
          else
            options.merge!('command' => 'listInstanceGroups')
          end
          request(options)
        end
      end

    end
  end
end

