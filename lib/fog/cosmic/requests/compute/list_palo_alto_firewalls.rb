module Fog
  module Cosmic
    class Compute

      class Real
        # lists Palo Alto firewall devices in a physical network
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listPaloAltoFirewalls.html]
        def list_palo_alto_firewalls(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listPaloAltoFirewalls') 
          else
            options.merge!('command' => 'listPaloAltoFirewalls')
          end
          request(options)
        end
      end

    end
  end
end

