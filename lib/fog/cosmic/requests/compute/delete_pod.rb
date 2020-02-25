module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a Pod.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deletePod.html]
        def delete_pod(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deletePod') 
          else
            options.merge!('command' => 'deletePod', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

