module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a network
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createNetwork.html]
        def create_network(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createNetwork')
          else
            options.merge!('command' => 'createNetwork',
            'displaytext' => args[0],
            'zoneid' => args[1],
            'name' => args[2],
            'networkofferingid' => args[3])
          end
          # add project id if we have one
          @cosmic_project_id ? options.merge!('projectid' => @cosmic_project_id) : nil
          request(options)
        end
      end

    end
  end
end

