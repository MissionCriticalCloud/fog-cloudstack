module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all available networks.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNetworks.html]
        def list_networks(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNetworks')
          else
            options.merge!('command' => 'listNetworks')
          end

          # add project id if we have one
          @cosmic_project_id ? options.merge!('projectid' => @cosmic_project_id) : nil

          request(options)
        end
      end

    end
  end
end

