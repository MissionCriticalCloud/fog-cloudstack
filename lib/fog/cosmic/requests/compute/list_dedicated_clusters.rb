module Fog
  module Cosmic
    class Compute

      class Real
        # Lists dedicated clusters.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listDedicatedClusters.html]
        def list_dedicated_clusters(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listDedicatedClusters') 
          else
            options.merge!('command' => 'listDedicatedClusters')
          end
          request(options)
        end
      end

    end
  end
end

