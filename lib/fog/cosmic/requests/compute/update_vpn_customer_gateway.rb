module Fog
  module Cosmic
    class Compute

      class Real
        # Update site to site vpn customer gateway
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateVpnCustomerGateway.html]
        def update_vpn_customer_gateway(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateVpnCustomerGateway') 
          else
            options.merge!('command' => 'updateVpnCustomerGateway', 
            'id' => args[0], 
            'gateway' => args[1], 
            'cidrlist' => args[2], 
            'ipsecpsk' => args[3], 
            'esppolicy' => args[4], 
            'ikepolicy' => args[5])
          end
          request(options)
        end
      end

    end
  end
end

