module Fog
  module Cosmic
    class Compute

      class Real
        # Adds a new cluster
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addCluster.html]
        def add_cluster(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addCluster') 
          else
            options.merge!('command' => 'addCluster', 
            'clustertype' => args[0], 
            'hypervisor' => args[1], 
            'clustername' => args[2], 
            'podid' => args[3], 
            'zoneid' => args[4])
          end
          request(options)
        end
      end

    end
  end
end

