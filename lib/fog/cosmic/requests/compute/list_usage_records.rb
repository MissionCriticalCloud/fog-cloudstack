module Fog
  module Cosmic
    class Compute

      class Real
        # Lists usage records for accounts
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listUsageRecords.html]
        def list_usage_records(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listUsageRecords') 
          else
            options.merge!('command' => 'listUsageRecords', 
            'enddate' => args[0], 
            'startdate' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

