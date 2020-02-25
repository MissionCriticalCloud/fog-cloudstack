module Fog
  module Cosmic
    class Compute

      class Real
        #  delete a SRX firewall device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteSrxFirewall.html]
        def delete_srx_firewall(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteSrxFirewall') 
          else
            options.merge!('command' => 'deleteSrxFirewall', 
            'fwdeviceid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

