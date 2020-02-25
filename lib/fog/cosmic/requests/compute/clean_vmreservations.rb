module Fog
  module Cosmic
    class Compute

      class Real
        # Cleanups VM reservations in the database.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/cleanVMReservations.html]
        def clean_vmreservations(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'cleanVMReservations') 
          else
            options.merge!('command' => 'cleanVMReservations')
          end
          request(options)
        end
      end

    end
  end
end

