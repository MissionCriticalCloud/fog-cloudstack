module Fog
  module Cosmic
    class Compute

      class Real
        # Lists user accounts
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listUsers.html]
        def list_users(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listUsers') 
          else
            options.merge!('command' => 'listUsers')
          end
          request(options)
        end
      end

    end
  end
end

