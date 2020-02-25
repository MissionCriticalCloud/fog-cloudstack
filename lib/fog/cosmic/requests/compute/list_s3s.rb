module Fog
  module Cosmic
    class Compute

      class Real
        # Lists S3s
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listS3s.html]
        def list_s3s(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listS3s') 
          else
            options.merge!('command' => 'listS3s')
          end
          request(options)
        end
      end

    end
  end
end

