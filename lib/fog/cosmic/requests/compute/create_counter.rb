module Fog
  module Cosmic
    class Compute

      class Real
        # Adds metric counter
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createCounter.html]
        def create_counter(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createCounter') 
          else
            options.merge!('command' => 'createCounter', 
            'name' => args[0], 
            'value' => args[1], 
            'source' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

