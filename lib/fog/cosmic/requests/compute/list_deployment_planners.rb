module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all DeploymentPlanners available.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listDeploymentPlanners.html]
        def list_deployment_planners(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listDeploymentPlanners') 
          else
            options.merge!('command' => 'listDeploymentPlanners')
          end
          request(options)
        end
      end

    end
  end
end

