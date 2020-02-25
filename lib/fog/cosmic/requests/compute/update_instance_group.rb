module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a vm group
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateInstanceGroup.html]
        def update_instance_group(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateInstanceGroup') 
          else
            options.merge!('command' => 'updateInstanceGroup', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

