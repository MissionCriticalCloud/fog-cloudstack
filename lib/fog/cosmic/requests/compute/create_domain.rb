module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a domain
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createDomain.html]
        def create_domain(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createDomain') 
          else
            options.merge!('command' => 'createDomain', 
            'name' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

