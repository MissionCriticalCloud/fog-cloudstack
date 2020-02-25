module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a template of a virtual machine. The virtual machine must be in a STOPPED state. A template created from this command is automatically designated as a private template visible to the account that created it.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createTemplate.html]
        def create_template(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createTemplate') 
          else
            options.merge!('command' => 'createTemplate', 
            'ostypeid' => args[0], 
            'name' => args[1], 
            'displaytext' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

