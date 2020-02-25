module Fog
  module Cosmic
    class Compute

      class Real
        # Copies a template from one zone to another.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/copyTemplate.html]
        def copy_template(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'copyTemplate') 
          else
            options.merge!('command' => 'copyTemplate', 
            'id' => args[0], 
            'destzoneid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

