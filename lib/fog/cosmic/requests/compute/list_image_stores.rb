module Fog
  module Cosmic
    class Compute

      class Real
        # Lists image stores.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listImageStores.html]
        def list_image_stores(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listImageStores') 
          else
            options.merge!('command' => 'listImageStores')
          end
          request(options)
        end
      end

    end
  end
end

