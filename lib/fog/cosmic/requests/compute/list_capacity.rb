module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all the system wide capacities.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listCapacity.html]
        def list_capacity(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listCapacity') 
          else
            options.merge!('command' => 'listCapacity')
          end
          request(options)
        end
      end

    end
  end
end

