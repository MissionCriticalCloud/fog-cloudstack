module Fog
  module Cosmic
    class Compute

      class Real
        # Delete a certificate from Cosmic
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteSslCert.html]
        def delete_ssl_cert(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteSslCert') 
          else
            options.merge!('command' => 'deleteSslCert', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

