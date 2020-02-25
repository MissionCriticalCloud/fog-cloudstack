module Fog
  module Cosmic
    class Compute

      class Real
        # List resource tag(s)
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listTags.html]
        def list_tags(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listTags') 
          else
            options.merge!('command' => 'listTags')
          end
          request(options)
        end
      end

    end
  end
end

