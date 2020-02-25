module Fog
  module Cosmic
    class Compute

      class Real
        # List Usage Types
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listUsageTypes.html]
        def list_usage_types(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listUsageTypes') 
          else
            options.merge!('command' => 'listUsageTypes')
          end
          request(options)
        end
      end

    end
  end
end

