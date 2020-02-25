module Fog
  module Cosmic
    class Compute

      class Real
        # lists all available apis on the server, provided by the Api Discovery plugin
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listApis.html]
        def list_apis(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listApis') 
          else
            options.merge!('command' => 'listApis')
          end
          request(options)
        end
      end

    end
  end
end

