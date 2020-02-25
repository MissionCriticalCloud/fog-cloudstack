module Fog
  module Cosmic
    class Compute

      class Real
        # Releases a dedicated guest vlan range to the system
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/releaseDedicatedGuestVlanRange.html]
        def release_dedicated_guest_vlan_range(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'releaseDedicatedGuestVlanRange') 
          else
            options.merge!('command' => 'releaseDedicatedGuestVlanRange', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

