module Fog
  module Cosmic
    class Compute

      class Real
        # Lists Cisco VNMC controllers
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listCiscoVnmcResources.html]
        def list_cisco_vnmc_resources(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listCiscoVnmcResources') 
          else
            options.merge!('command' => 'listCiscoVnmcResources')
          end
          request(options)
        end
      end

    end
  end
end

