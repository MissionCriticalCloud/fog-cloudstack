module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all children domains belonging to a specified domain
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listDomainChildren.html]
        def list_domain_children(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listDomainChildren') 
          else
            options.merge!('command' => 'listDomainChildren')
          end
          request(options)
        end
      end

    end
  end
end

