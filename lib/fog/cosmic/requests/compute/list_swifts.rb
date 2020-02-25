module Fog
  module Cosmic
    class Compute

      class Real
        # List Swift.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listSwifts.html]
        def list_swifts(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listSwifts') 
          else
            options.merge!('command' => 'listSwifts')
          end
          request(options)
        end
      end

    end
  end
end

