module Fog
  module Cosmic
    class Compute

      class Real
        # Find user account by API key
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/getUser.html]
        def get_user(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'getUser') 
          else
            options.merge!('command' => 'getUser', 
            'apikey' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

