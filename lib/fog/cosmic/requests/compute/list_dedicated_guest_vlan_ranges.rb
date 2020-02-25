module Fog
  module Cosmic
    class Compute

      class Real
        # Lists dedicated guest vlan ranges
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listDedicatedGuestVlanRanges.html]
        def list_dedicated_guest_vlan_ranges(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listDedicatedGuestVlanRanges') 
          else
            options.merge!('command' => 'listDedicatedGuestVlanRanges')
          end
          request(options)
        end
      end

    end
  end
end

