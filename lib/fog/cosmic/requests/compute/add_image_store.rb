module Fog
  module Cosmic
    class Compute

      class Real
        # Adds backup image store.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addImageStore.html]
        def add_image_store(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addImageStore') 
          else
            options.merge!('command' => 'addImageStore', 
            'provider' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

