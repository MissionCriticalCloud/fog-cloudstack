module Fog
  module Cosmic
    class Compute

      class Real
        # Lists resource limits.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listResourceLimits.html]
        def list_resource_limits(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listResourceLimits') 
          else
            options.merge!('command' => 'listResourceLimits')
          end
          request(options)
        end
      end

    end
  end
end

