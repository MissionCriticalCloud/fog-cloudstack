module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all Pods.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listPods.html]
        def list_pods(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listPods') 
          else
            options.merge!('command' => 'listPods')
          end
          request(options)
        end
      end

    end
  end
end

