module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes an ISO file.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteIso.html]
        def delete_iso(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteIso') 
          else
            options.merge!('command' => 'deleteIso', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

