module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes VPC offering
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteVPCOffering.html]
        def delete_vpcoffering(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteVPCOffering') 
          else
            options.merge!('command' => 'deleteVPCOffering', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

