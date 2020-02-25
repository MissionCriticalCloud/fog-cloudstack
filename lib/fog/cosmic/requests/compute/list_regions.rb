module Fog
  module Cosmic
    class Compute

      class Real
        # Lists Regions
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listRegions.html]
        def list_regions(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listRegions') 
          else
            options.merge!('command' => 'listRegions')
          end
          request(options)
        end
      end

    end
  end
end

