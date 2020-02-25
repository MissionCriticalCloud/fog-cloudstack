module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a security group
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createSecurityGroup.html]
        def create_security_group(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createSecurityGroup') 
          else
            options.merge!('command' => 'createSecurityGroup', 
            'name' => args[0])
          end
          request(options)
        end
      end
 
      class Mock
        def create_security_group(options={})
          security_group_id = Fog::Cosmic.uuid

          security_group = {
            "id" => security_group_id,
          }.merge(options)

          self.data[:security_groups][security_group_id]= security_group
          {"createsecuritygroupresponse" => { "securitygroup" => security_group}}
        end
      end 
    end
  end
end

