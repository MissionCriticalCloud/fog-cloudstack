module Fog
  module Cosmic
    class Compute

      class Real
        # Uploads a data disk.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/uploadVolume.html]
        def upload_volume(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'uploadVolume')
          else
            options.merge!('command' => 'uploadVolume',
            'url' => args[0],
            'format' => args[1],
            'zoneid' => args[2],
            'name' => args[3])
          end
          # add project id if we have one
          @cosmic_project_id ? options.merge!('projectid' => @cosmic_project_id) : nil
          request(options)
        end
      end

    end
  end
end

