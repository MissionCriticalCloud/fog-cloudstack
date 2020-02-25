module Fog
  module Cosmic
    class Compute

      class Real
        # Registers an existing template into the Cosmic cloud.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/registerTemplate.html]
        def register_template(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'registerTemplate') 
          else
            options.merge!('command' => 'registerTemplate', 
            'zoneid' => args[0], 
            'format' => args[1], 
            'hypervisor' => args[2], 
            'url' => args[3], 
            'name' => args[4], 
            'ostypeid' => args[5], 
            'displaytext' => args[6])
          end
          request(options)
        end
      end
 
      class Mock
        def register_template(options={})
          mock_template_id = self.data[:images].keys.first
          registered_template = self.data[:images][mock_template_id]

          {
              'registertemplateresponse' =>
              {
                  'count' => 1,
                  'template' => [registered_template]
              }
          }
        end
      end 
    end
  end
end

