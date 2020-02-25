module Fog
  module Cosmic
    class Compute

      class Real
        # Create a new keypair and returns the private key
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createSSHKeyPair.html]
        def create_ssh_key_pair(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createSSHKeyPair')
          else
            options.merge!('command' => 'createSSHKeyPair',
            'name' => args[0])
          end
          # add project id if we have one
          @cosmic_project_id ? options.merge!('projectid' => @cosmic_project_id) : nil
          request(options)
        end
      end

    end
  end
end

