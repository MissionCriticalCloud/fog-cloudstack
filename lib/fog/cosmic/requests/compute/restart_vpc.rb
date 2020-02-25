module Fog
  module Cosmic
    class Compute

      class Real
        # Restarts a VPC
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/restartVPC.html]
        def restart_vpc(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'restartVPC') 
          else
            options.merge!('command' => 'restartVPC', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

