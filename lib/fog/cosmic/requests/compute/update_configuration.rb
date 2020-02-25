module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a configuration.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateConfiguration.html]
        def update_configuration(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateConfiguration') 
          else
            options.merge!('command' => 'updateConfiguration', 
            'name' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

