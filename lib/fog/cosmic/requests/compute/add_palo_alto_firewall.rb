module Fog
  module Cosmic
    class Compute

      class Real
        # Adds a Palo Alto firewall device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addPaloAltoFirewall.html]
        def add_palo_alto_firewall(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addPaloAltoFirewall') 
          else
            options.merge!('command' => 'addPaloAltoFirewall', 
            'username' => args[0], 
            'networkdevicetype' => args[1], 
            'password' => args[2], 
            'physicalnetworkid' => args[3], 
            'url' => args[4])
          end
          request(options)
        end
      end

    end
  end
end

