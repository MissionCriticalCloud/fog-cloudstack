module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a specified domain
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteDomain.html]
        def delete_domain(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteDomain') 
          else
            options.merge!('command' => 'deleteDomain', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

