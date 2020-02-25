module Fog
  module Cosmic
    class Compute

      class Real
        # List Conditions for the specific user
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listConditions.html]
        def list_conditions(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listConditions') 
          else
            options.merge!('command' => 'listConditions')
          end
          request(options)
        end
      end

    end
  end
end

