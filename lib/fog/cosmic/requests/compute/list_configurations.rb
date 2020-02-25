module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all configurations.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listConfigurations.html]
        def list_configurations(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listConfigurations') 
          else
            options.merge!('command' => 'listConfigurations')
          end
          request(options)
        end
      end

    end
  end
end

