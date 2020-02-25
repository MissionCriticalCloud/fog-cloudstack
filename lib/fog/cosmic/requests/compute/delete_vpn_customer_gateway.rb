module Fog
  module Cosmic
    class Compute

      class Real
        # Delete site to site vpn customer gateway
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteVpnCustomerGateway.html]
        def delete_vpn_customer_gateway(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteVpnCustomerGateway') 
          else
            options.merge!('command' => 'deleteVpnCustomerGateway', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

