module Fog
  module Cosmic
    class Compute

      class Real
        # List ucs blades
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listUcsBlades.html]
        def list_ucs_blades(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listUcsBlades') 
          else
            options.merge!('command' => 'listUcsBlades', 
            'ucsmanagerid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

