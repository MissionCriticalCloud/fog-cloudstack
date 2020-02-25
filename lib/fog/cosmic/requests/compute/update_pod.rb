module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a Pod.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updatePod.html]
        def update_pod(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updatePod') 
          else
            options.merge!('command' => 'updatePod', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

