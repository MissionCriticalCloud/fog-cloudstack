module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a vm group
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createInstanceGroup.html]
        def create_instance_group(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createInstanceGroup') 
          else
            options.merge!('command' => 'createInstanceGroup', 
            'name' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

