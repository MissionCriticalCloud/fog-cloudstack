module Fog
  module Cosmic
    class Compute

      class Real
        # Adds detail for the Resource.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addResourceDetail.html]
        def add_resource_detail(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addResourceDetail') 
          else
            options.merge!('command' => 'addResourceDetail', 
            'resourcetype' => args[0], 
            'details' => args[1], 
            'resourceid' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

