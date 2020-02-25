module Fog
  module Cosmic
    class Compute

      class Real
        # revert a volume snapshot.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/revertSnapshot.html]
        def revert_snapshot(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'revertSnapshot') 
          else
            options.merge!('command' => 'revertSnapshot', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

