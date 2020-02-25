module Fog
  module Cosmic
    class Compute

      class Real
        # Copies an iso from one zone to another.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/copyIso.html]
        def copy_iso(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'copyIso') 
          else
            options.merge!('command' => 'copyIso', 
            'destzoneid' => args[0], 
            'id' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

