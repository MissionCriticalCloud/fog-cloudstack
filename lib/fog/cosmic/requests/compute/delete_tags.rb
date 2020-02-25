module Fog
  module Cosmic
    class Compute

      class Real
        # Deleting resource tag(s)
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteTags.html]
        def delete_tags(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteTags') 
          else
            options.merge!('command' => 'deleteTags', 
            'resourceids' => args[0], 
            'resourcetype' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

