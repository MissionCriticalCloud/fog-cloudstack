module Fog
  module Cosmic
    class Compute

      class Real
        # Adds Swift.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addSwift.html]
        def add_swift(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addSwift') 
          else
            options.merge!('command' => 'addSwift', 
            'url' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

