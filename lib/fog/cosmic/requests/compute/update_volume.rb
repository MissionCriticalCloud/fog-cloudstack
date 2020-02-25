module Fog
  module Cosmic
    class Compute

      class Real
        # Updates the volume.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateVolume.html]
        def update_volume(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateVolume') 
          else
            options.merge!('command' => 'updateVolume')
          end
          request(options)
        end
      end

    end
  end
end

