module Fog
  module Cosmic
    class Compute
      class Real
        # Creates an account.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/associateIpAddress.html]
        def acquire_ip_address(options={})
          options.merge!(
            'command' => 'associateIpAddress'
          )

          request(options)
        end
      end
    end
  end
end
