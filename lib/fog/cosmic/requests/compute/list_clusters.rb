module Fog
  module Cosmic
    class Compute

      class Real
        # Lists clusters.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listClusters.html]
        def list_clusters(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listClusters') 
          else
            options.merge!('command' => 'listClusters')
          end
          request(options)
        end
      end

    end
  end
end

