module Fog
  module Cosmic
    class Compute

      class Real
        # load template into primary storage
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/prepareTemplate.html]
        def prepare_template(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'prepareTemplate') 
          else
            options.merge!('command' => 'prepareTemplate', 
            'templateid' => args[0], 
            'zoneid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

