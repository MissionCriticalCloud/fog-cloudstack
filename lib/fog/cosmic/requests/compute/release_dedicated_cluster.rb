module Fog
  module Cosmic
    class Compute

      class Real
        # Release the dedication for cluster
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/releaseDedicatedCluster.html]
        def release_dedicated_cluster(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'releaseDedicatedCluster') 
          else
            options.merge!('command' => 'releaseDedicatedCluster', 
            'clusterid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

