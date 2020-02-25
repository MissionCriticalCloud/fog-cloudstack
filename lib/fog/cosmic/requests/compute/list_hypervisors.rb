module Fog
  module Cosmic
    class Compute

      class Real
        # List hypervisors
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listHypervisors.html]
        def list_hypervisors(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listHypervisors') 
          else
            options.merge!('command' => 'listHypervisors')
          end
          request(options)
        end
      end

    end
  end
end

