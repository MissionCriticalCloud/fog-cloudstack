module Fog
  module Cosmic
    class Compute

      class Real
        # Upload a certificate to Cosmic
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/uploadSslCert.html]
        def upload_ssl_cert(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'uploadSslCert') 
          else
            options.merge!('command' => 'uploadSslCert', 
            'certificate' => args[0], 
            'privatekey' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

