module Fog
  module Cosmic
    class Compute

      class Real
        # Configures a SRX firewall device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/configureSrxFirewall.html]
        def configure_srx_firewall(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'configureSrxFirewall') 
          else
            options.merge!('command' => 'configureSrxFirewall', 
            'fwdeviceid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

