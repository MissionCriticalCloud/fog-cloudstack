module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all available ovs elements.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listOvsElements.html]
        def list_ovs_elements(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listOvsElements') 
          else
            options.merge!('command' => 'listOvsElements')
          end
          request(options)
        end
      end

    end
  end
end

