module Fog
  module Cosmic
    class Compute

      class Real
        # Creates resource tag(s)
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createTags.html]
        def create_tags(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createTags') 
          else
            options.merge!('command' => 'createTags', 
            'tags' => args[0], 
            'resourcetype' => args[1], 
            'resourceids' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

