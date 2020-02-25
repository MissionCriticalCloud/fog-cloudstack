module Fog
  module Cosmic
    class Compute

      class Real
        # Dedicates a host.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/dedicateHost.html]
        def dedicate_host(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'dedicateHost') 
          else
            options.merge!('command' => 'dedicateHost', 
            'hostid' => args[0], 
            'domainid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

