module Fog
  module Cosmic
    class Compute

      class Real
        # Creates VPC offering
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createVPCOffering.html]
        def create_vpcoffering(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createVPCOffering') 
          else
            options.merge!('command' => 'createVPCOffering', 
            'supportedservices' => args[0], 
            'name' => args[1], 
            'displaytext' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

