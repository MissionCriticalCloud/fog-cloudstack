module Fog
  module Cosmic
    class Compute

      class Real
        # Release the dedication for host
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/releaseDedicatedHost.html]
        def release_dedicated_host(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'releaseDedicatedHost') 
          else
            options.merge!('command' => 'releaseDedicatedHost', 
            'hostid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

