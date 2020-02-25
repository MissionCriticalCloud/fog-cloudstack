module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a Zone.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createZone.html]
        def create_zone(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createZone') 
          else
            options.merge!('command' => 'createZone', 
            'dns1' => args[0], 
            'internaldns1' => args[1], 
            'networktype' => args[2], 
            'name' => args[3])
          end
          request(options)
        end
      end

    end
  end
end

