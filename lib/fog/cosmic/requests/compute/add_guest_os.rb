module Fog
  module Cosmic
    class Compute

      class Real
        # Add a new guest OS type
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addGuestOs.html]
        def add_guest_os(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addGuestOs') 
          else
            options.merge!('command' => 'addGuestOs', 
            'osdisplayname' => args[0], 
            'oscategoryid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

