module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a counter
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteCounter.html]
        def delete_counter(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteCounter') 
          else
            options.merge!('command' => 'deleteCounter', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

