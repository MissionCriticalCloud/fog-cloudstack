module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes an image store .
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteImageStore.html]
        def delete_image_store(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteImageStore') 
          else
            options.merge!('command' => 'deleteImageStore', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

