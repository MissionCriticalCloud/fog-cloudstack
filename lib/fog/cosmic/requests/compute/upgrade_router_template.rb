module Fog
  module Cosmic
    class Compute

      class Real
        # Upgrades router to use newer template
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/upgradeRouterTemplate.html]
        def upgrade_router_template(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'upgradeRouterTemplate') 
          else
            options.merge!('command' => 'upgradeRouterTemplate')
          end
          request(options)
        end
      end

    end
  end
end

