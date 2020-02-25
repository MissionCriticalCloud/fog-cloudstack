module Fog
  module Cosmic
    class Compute

      class Real
        # Marks a default zone for this account
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/markDefaultZoneForAccount.html]
        def mark_default_zone_for_account(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'markDefaultZoneForAccount') 
          else
            options.merge!('command' => 'markDefaultZoneForAccount', 
            'zoneid' => args[0], 
            'account' => args[1], 
            'domainid' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

