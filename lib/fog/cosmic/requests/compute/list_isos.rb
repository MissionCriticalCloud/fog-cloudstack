module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all available ISO files.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listIsos.html]
        def list_isos(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listIsos') 
          else
            options.merge!('command' => 'listIsos')
          end
          request(options)
        end
      end

    end
  end
end

