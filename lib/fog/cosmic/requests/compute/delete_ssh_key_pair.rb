module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a keypair by name
        #
        # {CloudStack API Reference}[http://cloudstack.apache.org/docs/api/apidocs-4.4/root_admin/deleteSSHKeyPair.html]
        def delete_ssh_key_pair(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteSSHKeyPair')
          else
            options.merge!('command' => 'deleteSSHKeyPair',
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

