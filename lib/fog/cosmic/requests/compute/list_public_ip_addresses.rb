module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all public ip addresses
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listPublicIpAddresses.html]
        def list_public_ip_addresses(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listPublicIpAddresses')
          else
            options.merge!('command' => 'listPublicIpAddresses')
          end

          # add project id if we have one
          @cosmic_project_id ? options.merge!('projectid' => @cosmic_project_id) : nil

          request(options)
        end
      end

      class Mock
        def list_public_ip_addresses(*args)
          public_ip_address_id = args[0].is_a?(Hash) ? args[0]['id'] : nil
          if public_ip_address_id
            public_ip_addresses = [self.data[:public_ip_addresses][public_ip_address_id]]
          else
            public_ip_addresses = self.data[:public_ip_addresses].values
          end

          {
            'listpublicipaddressesresponse' => {
              'count' => public_ip_addresses.size,
              'publicipaddress' => public_ip_addresses
            }
          }
        end
      end
    end
  end
end

