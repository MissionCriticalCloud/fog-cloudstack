module Fog
  module Cosmic
    class Compute

      class Real
        # add a baremetal pxe server
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addBaremetalPxeKickStartServer.html]
        def add_baremetal_pxe_kick_start_server(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addBaremetalPxeKickStartServer') 
          else
            options.merge!('command' => 'addBaremetalPxeKickStartServer', 
            'url' => args[0], 
            'username' => args[1], 
            'tftpdir' => args[2], 
            'pxeservertype' => args[3], 
            'password' => args[4], 
            'physicalnetworkid' => args[5])
          end
          request(options)
        end
      end

    end
  end
end

