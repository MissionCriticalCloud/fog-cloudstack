module Fog
  module Cosmic
    class Compute

      class Real
        # Lists SSL certificates
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listSslCerts.html]
        def list_ssl_certs(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listSslCerts') 
          else
            options.merge!('command' => 'listSslCerts')
          end
          request(options)
        end
      end

    end
  end
end

