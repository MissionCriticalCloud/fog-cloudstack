module Fog
  module Cosmic
    class Compute

      class Real
        # Updates the information about Guest OS
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateGuestOs.html]
        def update_guest_os(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateGuestOs') 
          else
            options.merge!('command' => 'updateGuestOs', 
            'id' => args[0], 
            'osdisplayname' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

