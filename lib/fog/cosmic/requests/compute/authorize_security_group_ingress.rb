module Fog
  module Cosmic
    class Compute

      class Real
        # Authorizes a particular ingress rule for this security group
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/authorizeSecurityGroupIngress.html]
        def authorize_security_group_ingress(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'authorizeSecurityGroupIngress') 
          else
            options.merge!('command' => 'authorizeSecurityGroupIngress')
          end
          request(options)
        end
      end
 
      class Mock
        def authorize_security_group_ingress(options={})
          security_group_id      = options['securitygroupid']
          security_group_rule_id = Fog::Cosmic.uuid

          unless cidr = options['cidrlist']
            raise Fog::Cosmic::Compute::BadRequest.new('Unable to execute API command missing parameter cidr')
          end

          unless start_port = options['startport']
            raise Fog::Cosmic::Compute::BadRequest.new('Unable to execute API command missing parameter start_port')
          end

          unless end_port = options['endport']
            raise Fog::Cosmic::Compute::BadRequest.new('Unable to execute API command missing parameter end_port')
          end

          unless protocol = options['protocol']
            raise Fog::Cosmic::Compute::BadRequest.new('Unable to execute API command missing parameter protocol')
          end

          rule = {
            "ruleid"    => security_group_rule_id,
            "cidr"      => cidr,
            "startport" => start_port,
            "endport"   => end_port,
            "protocol"  => protocol
          }

          unless security_group = self.data[:security_groups][security_group_id]
            raise Fog::Cosmic::Compute::BadRequest.new("Security group id #{security_group_id} does not exist")
          end

          security_group["ingressrule"] ||= []
          security_group["ingressrule"] << rule

          job_id = Fog::Cosmic.uuid
          job = {
            "cmd"           => "com.cloud.api.commands.authorizeSecurityGroupIngress",
            "created"       => Time.now.iso8601,
            "jobid"         => job_id,
            "jobstatus"     => 1,
            "jobprocstatus" => 0,
            "jobresultcode" => 0,
            "jobresulttype" => "object",
            "jobresult"     => { "securitygroup" => security_group }
          }

          self.data[:jobs][job_id]= job

          { "authorizesecuritygroupingressresponse" => { "jobid" => job_id } }
        end
      end
 
    end
  end
end

