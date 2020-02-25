module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a domain with a new name
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateDomain.html]
        def update_domain(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateDomain') 
          else
            options.merge!('command' => 'updateDomain', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

