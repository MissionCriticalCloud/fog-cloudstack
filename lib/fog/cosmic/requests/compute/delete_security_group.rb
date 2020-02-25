module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes security group
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteSecurityGroup.html]
        def delete_security_group(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteSecurityGroup') 
          else
            options.merge!('command' => 'deleteSecurityGroup')
          end
          request(options)
        end
      end
 
      class Mock
        def delete_security_group(options={})
          security_group_id = options['id']
          if self.data[:security_groups][security_group_id]
            self.data[:security_groups].delete(security_group_id)
            {
              "deletesecuritygroupresponse" => {
                "success" => "true"
              }
            }
          else
            raise Fog::Cosmic::Compute::BadRequest.new('No security_group found')
          end
        end
      end 
    end
  end
end

