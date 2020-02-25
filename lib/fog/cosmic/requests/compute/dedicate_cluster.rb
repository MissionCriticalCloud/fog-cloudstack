module Fog
  module Cosmic
    class Compute

      class Real
        # Dedicate an existing cluster
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/dedicateCluster.html]
        def dedicate_cluster(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'dedicateCluster') 
          else
            options.merge!('command' => 'dedicateCluster', 
            'clusterid' => args[0], 
            'domainid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

