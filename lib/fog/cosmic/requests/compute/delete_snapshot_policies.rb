module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes snapshot policies for the account.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteSnapshotPolicies.html]
        def delete_snapshot_policies(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteSnapshotPolicies') 
          else
            options.merge!('command' => 'deleteSnapshotPolicies')
          end
          request(options)
        end
      end

    end
  end
end

