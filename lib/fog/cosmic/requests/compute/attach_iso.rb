module Fog
  module Cosmic
    class Compute

      class Real
        # Attaches an ISO to a virtual machine.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/attachIso.html]
        def attach_iso(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'attachIso') 
          else
            options.merge!('command' => 'attachIso', 
            'virtualmachineid' => args[0], 
            'id' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

