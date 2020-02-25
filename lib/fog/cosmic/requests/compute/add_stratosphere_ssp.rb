module Fog
  module Cosmic
    class Compute

      class Real
        # Adds stratosphere ssp server
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addStratosphereSsp.html]
        def add_stratosphere_ssp(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addStratosphereSsp') 
          else
            options.merge!('command' => 'addStratosphereSsp', 
            'url' => args[0], 
            'zoneid' => args[1], 
            'name' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

