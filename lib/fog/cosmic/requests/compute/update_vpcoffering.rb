module Fog
  module Cosmic
    class Compute

      class Real
        # Updates VPC offering
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateVPCOffering.html]
        def update_vpcoffering(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateVPCOffering') 
          else
            options.merge!('command' => 'updateVPCOffering', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

