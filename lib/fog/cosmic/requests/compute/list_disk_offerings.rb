module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all available disk offerings.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listDiskOfferings.html]
        def list_disk_offerings(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listDiskOfferings') 
          else
            options.merge!('command' => 'listDiskOfferings')
          end
          request(options)
        end
      end
 
      class Mock
        # TODO: add id, name filters and paging params
        def list_disk_offerings(options={})
          disk_offerings = self.data[:disk_offerings]
          { "listdiskofferingsresponse" => { "count"=> disk_offerings.count, "diskoffering"=> disk_offerings.values } }
        end

      end 
    end
  end
end

