require 'digest/md5'

module Fog
  module Cosmic
    class Compute < Fog::Service

      class BadRequest < Fog::Cosmic::Compute::Error; end
      class Unauthorized < Fog::Cosmic::Compute::Error; end

      requires :cosmic_host

      recognizes :cosmic_api_key, :cosmic_secret_access_key, :cosmic_session_key, :cosmic_session_id,
                 :cosmic_port, :cosmic_path, :cosmic_scheme, :cosmic_persistent, :cosmic_project_id

      model_path 'fog/cosmic/models/compute'
      request_path 'fog/cosmic/requests/compute'

      model :address
      model :disk_offering
      collection :disk_offerings
      model :egress_firewall_rule
      collection :egress_firewall_rules
      model :firewall_rule
      collection :firewall_rules
      model :flavor
      collection :flavors
      model :image
      collection :images
      model :job
      collection :jobs
      model :network
      collection :networks
      model :network_offering
      collection :network_offerings
      model :public_ip_address
      collection :public_ip_addresses
      model :port_forwarding_rule
      collection :port_forwarding_rules
      model :project
      collection :projects
      model :server
      collection :servers
      model :volume
      collection :volumes
      model :snapshot
      collection :snapshots
      model :zone
      collection :zones

      request :activate_project
      request :add_account_to_project
      request :add_cluster
      request :add_guest_os
      request :add_guest_os_mapping
      request :add_host
      request :add_image_store
      request :add_ip_to_nic
      request :add_network_device
      request :add_network_service_provider
      request :add_nic_to_virtual_machine
      request :add_nicira_nvp_device
      request :add_region
      request :add_resource_detail
      request :add_secondary_storage
      request :add_traffic_type
      request :add_vpn_user
      request :archive_alerts
      request :archive_events
      request :assign_cert_to_load_balancer
      request :assign_to_load_balancer_rule
      request :assign_virtual_machine
      request :associate_ip_address
      request :attach_iso
      request :attach_volume
      request :cancel_host_maintenance
      request :cancel_storage_maintenance
      request :change_service_for_router
      request :change_service_for_system_vm
      request :change_service_for_virtual_machine
      request :clean_vmreservations
      request :configure_virtual_router_element
      request :copy_iso
      request :copy_template
      request :create_account
      request :create_affinity_group
      request :create_disk_offering
      request :create_domain
      request :create_egress_firewall_rule
      request :create_firewall_rule
      request :create_instance_group
      request :create_ip_forwarding_rule
      request :create_lb_health_check_policy
      request :create_lb_stickiness_policy
      request :create_network
      request :create_network_acl
      request :create_network_acl_list
      request :create_network_offering
      request :create_physical_network
      request :create_pod
      request :create_port_forwarding_rule
      request :create_private_gateway
      request :create_project
      request :create_remote_access_vpn
      request :create_secondary_staging_store
      request :create_service_offering
      request :create_snapshot
      request :create_ssh_key_pair
      request :create_static_route
      request :create_storage_network_ip_range
      request :create_storage_pool
      request :create_tags
      request :create_template
      request :create_user
      request :create_virtual_router_element
      request :create_vlan_ip_range
      request :create_vm_snapshot
      request :create_volume
      request :create_vpc
      request :create_vpcoffering
      request :create_vpn_connection
      request :create_vpn_customer_gateway
      request :create_vpn_gateway
      request :create_zone
      request :dedicate_cluster
      request :dedicate_guest_vlan_range
      request :dedicate_host
      request :dedicate_pod
      request :dedicate_public_ip_range
      request :dedicate_zone
      request :delete_account
      request :delete_account_from_project
      request :delete_affinity_group
      request :delete_alerts
      request :delete_cluster
      request :delete_disk_offering
      request :delete_domain
      request :delete_egress_firewall_rule
      request :delete_events
      request :delete_firewall_rule
      request :delete_host
      request :delete_image_store
      request :delete_instance_group
      request :delete_ip_forwarding_rule
      request :delete_iso
      request :delete_lb_health_check_policy
      request :delete_lb_stickiness_policy
      request :delete_network
      request :delete_network_acl
      request :delete_network_acl_list
      request :delete_network_device
      request :delete_network_offering
      request :delete_network_service_provider
      request :delete_nicira_nvp_device
      request :delete_physical_network
      request :delete_pod
      request :delete_port_forwarding_rule
      request :delete_private_gateway
      request :delete_project
      request :delete_project_invitation
      request :delete_remote_access_vpn
      request :delete_secondary_staging_store
      request :delete_service_offering
      request :delete_snapshot
      request :delete_ssh_key_pair
      request :delete_ssl_cert
      request :delete_static_route
      request :delete_storage_network_ip_range
      request :delete_storage_pool
      request :delete_tags
      request :delete_template
      request :delete_traffic_type
      request :delete_user
      request :delete_vlan_ip_range
      request :delete_vm_snapshot
      request :delete_volume
      request :delete_vpc
      request :delete_vpcoffering
      request :delete_vpn_connection
      request :delete_vpn_customer_gateway
      request :delete_vpn_gateway
      request :delete_zone
      request :deploy_virtual_machine
      request :destroy_router
      request :destroy_system_vm
      request :destroy_virtual_machine
      request :detach_iso
      request :detach_volume
      request :disable_account
      request :disable_static_nat
      request :disable_user
      request :disassociate_ip_address
      request :enable_account
      request :enable_static_nat
      request :enable_storage_maintenance
      request :enable_user
      request :expunge_virtual_machine
      request :extract_iso
      request :extract_template
      request :extract_volume
      request :find_hosts_for_migration
      request :find_storage_pools_for_migration
      request :generate_alert
      request :get_api_limit
      request :get_cloud_identifier
      request :get_user
      request :get_virtual_machine_user_data
      request :get_vm_password
      request :import_ldap_users
      request :ldap_create_account
      request :list_accounts
      request :list_affinity_group_types
      request :list_affinity_groups
      request :list_alerts
      request :list_apis
      request :list_async_jobs
      request :list_capabilities
      request :list_capacity
      request :list_clusters
      request :list_configurations
      request :list_dedicated_clusters
      request :list_dedicated_guest_vlan_ranges
      request :list_dedicated_hosts
      request :list_dedicated_pods
      request :list_dedicated_zones
      request :list_deployment_planners
      request :list_disk_offerings
      request :list_domain_children
      request :list_domains
      request :list_egress_firewall_rules
      request :list_event_types
      request :list_events
      request :list_firewall_rules
      request :list_guest_os_mapping
      request :list_hosts
      request :list_hypervisor_capabilities
      request :list_hypervisors
      request :list_image_stores
      request :list_instance_groups
      request :list_ip_forwarding_rules
      request :list_iso_permissions
      request :list_isos
      request :list_lb_health_check_policies
      request :list_lb_stickiness_policies
      request :list_ldap_users
      request :list_load_balancer_rule_instances
      request :list_load_balancer_rules
      request :list_network_acl_lists
      request :list_network_acls
      request :list_network_device
      request :list_network_isolation_methods
      request :list_network_offerings
      request :list_network_service_providers
      request :list_networks
      request :list_nicira_nvp_device_networks
      request :list_nicira_nvp_devices
      request :list_nics
      request :list_os_categories
      request :list_os_types
      request :list_physical_networks
      request :list_pods
      request :list_port_forwarding_rules
      request :list_private_gateways
      request :list_project_accounts
      request :list_project_invitations
      request :list_projects
      request :list_public_ip_addresses
      request :list_regions
      request :list_remote_access_vpns
      request :list_resource_details
      request :list_resource_limits
      request :list_routers
      request :list_secondary_staging_stores
      request :list_service_offerings
      request :list_snapshots
      request :list_ssh_key_pairs
      request :list_ssl_certs
      request :list_static_routes
      request :list_storage_network_ip_range
      request :list_storage_pools
      request :list_storage_providers
      request :list_supported_network_services
      request :list_system_vms
      request :list_tags
      request :list_template_permissions
      request :list_templates
      request :list_traffic_types
      request :list_users
      request :list_virtual_machines
      request :list_virtual_router_elements
      request :list_vlan_ip_ranges
      request :list_vm_snapshot
      request :list_volumes
      request :list_vpc_offerings
      request :list_vpcs
      request :list_vpn_connections
      request :list_vpn_customer_gateways
      request :list_vpn_gateways
      request :list_vpn_users
      request :list_zones
      request :lock_account
      request :lock_user
      request :mark_default_zone_for_account
      request :migrate_system_vm
      request :migrate_virtual_machine
      request :migrate_virtual_machine_with_volume
      request :migrate_volume
      request :prepare_host_for_maintenance
      request :prepare_template
      request :query_async_job_result
      request :reboot_router
      request :reboot_system_vm
      request :reboot_virtual_machine
      request :reconnect_host
      request :recover_virtual_machine
      request :register_iso
      request :register_ssh_key_pair
      request :register_template
      request :register_user_keys
      request :release_dedicated_cluster
      request :release_dedicated_guest_vlan_range
      request :release_dedicated_host
      request :release_dedicated_pod
      request :release_dedicated_zone
      request :release_host_reservation
      request :release_public_ip_range
      request :remove_cert_from_load_balancer
      request :remove_from_load_balancer_rule
      request :remove_guest_os
      request :remove_guest_os_mapping
      request :remove_ip_from_nic
      request :remove_nic_from_virtual_machine
      request :remove_region
      request :remove_resource_detail
      request :remove_vpn_user
      request :replace_network_acl_list
      request :reset_api_limit
      request :reset_password_for_virtual_machine
      request :reset_ssh_key_for_virtual_machine
      request :reset_vpn_connection
      request :resize_volume
      request :restart_network
      request :restart_vpc
      request :restore_virtual_machine
      request :revert_snapshot
      request :revert_to_vm_snapshot
      request :scale_system_vm
      request :scale_virtual_machine
      request :start_router
      request :start_system_vm
      request :start_virtual_machine
      request :stop_router
      request :stop_system_vm
      request :stop_virtual_machine
      request :suspend_project
      request :update_account
      request :update_cluster
      request :update_configuration
      request :update_default_nic_for_virtual_machine
      request :update_disk_offering
      request :update_domain
      request :update_egress_firewall_rule
      request :update_firewall_rule
      request :update_guest_os
      request :update_guest_os_mapping
      request :update_host
      request :update_host_password
      request :update_hypervisor_capabilities
      request :update_instance_group
      request :update_ip_address
      request :update_iso
      request :update_iso_permissions
      request :update_lb_health_check_policy
      request :update_lb_stickiness_policy
      request :update_network
      request :update_network_acl_item
      request :update_network_acl_list
      request :update_network_offering
      request :update_network_service_provider
      request :update_physical_network
      request :update_pod
      request :update_port_forwarding_rule
      request :update_project
      request :update_project_invitation
      request :update_region
      request :update_remote_access_vpn
      request :update_resource_count
      request :update_resource_limit
      request :update_service_offering
      request :update_storage_network_ip_range
      request :update_storage_pool
      request :update_template
      request :update_template_permissions
      request :update_user
      request :update_virtual_machine
      request :update_vm_affinity_group
      request :update_volume
      request :update_vpc
      request :update_vpcoffering
      request :update_vpn_connection
      request :update_vpn_customer_gateway
      request :update_vpn_gateway
      request :update_zone
      request :upgrade_router_template
      request :upload_custom_certificate
      request :upload_ssl_cert
      request :upload_volume


      class Real

        def initialize(options={})
          @cosmic_api_key           = options[:cosmic_api_key]
          @cosmic_secret_access_key = options[:cosmic_secret_access_key]
          @cosmic_session_id        = options[:cosmic_session_id]
          @cosmic_session_key       = options[:cosmic_session_key]
          @cosmic_project_id        = options[:cosmic_project_id]
          @host                         = options[:cosmic_host]
          @path                         = options[:cosmic_path]    || '/client/api'
          @port                         = options[:cosmic_port]    || 443
          @scheme                       = options[:cosmic_scheme]  || 'https'
          @connection = Fog::XML::Connection.new("#{@scheme}://#{@host}:#{@port}#{@path}", options[:cosmic_persistent], {:ssl_verify_peer => false})
        end

        def reload
          @connection.reset
        end

        def login(username,password,domain)
          response = issue_request({
            'response' => 'json',
            'command'  => 'login',
            'username' => username,
            'password' => Digest::MD5.hexdigest(password),
            'domain'   => domain
          })

          # Parse response cookies to retrive JSESSIONID token
          cookies   = CGI::Cookie.parse(response.headers['Set-Cookie'])
          sessionid = cookies['JSESSIONID'].first

          # Decode the login response
          response   = Fog::JSON.decode(response.body)

          user = response['loginresponse']
          user.merge!('sessionid' => sessionid)

          @cosmic_session_id  = user['sessionid']
          @cosmic_session_key = user['sessionkey']

          user
        end

        def request(params)
          params.reject!{|k,v| v.nil?}

          params.merge!('response' => 'json')

          if has_session?
            params, headers = authorize_session(params)
          elsif has_keys?
            params, headers = authorize_api_keys(params)
          end

          response = issue_request(params,headers)
          response = Fog::JSON.decode(response.body) unless response.body.empty?
          response
        end

      private
        def has_session?
          @cosmic_session_id && @cosmic_session_key
        end

        def has_keys?
          @cosmic_api_key && @cosmic_secret_access_key
        end

        def authorize_session(params)
          # set the session id cookie for the request
          headers = {'Cookie' => "JSESSIONID=#{@cosmic_session_id};"}
          # set the sesion key for the request, params are not signed using session auth
          params.merge!('sessionkey' => @cosmic_session_key)

          return params, headers
        end

        def authorize_api_keys(params)
          headers = {}
          # merge the api key into the params
          params.merge!('apiKey' => @cosmic_api_key)
          # sign the request parameters
          signature = Fog::Cosmic.signed_params(@cosmic_secret_access_key,params)
          # merge signature into request param
          params.merge!({'signature' => signature})

          return params, headers
        end

        def issue_request(params={},headers={},method='GET',expects=200)
          begin
            @connection.request({
              :query => params,
              :headers => headers,
              :method => method,
              :expects => expects
            })

          rescue Excon::Errors::HTTPStatusError => error
            error_response = Fog::JSON.decode(error.response.body)

            error_code = error_response.values.first['errorcode']
            error_text = error_response.values.first['errortext']

            case error_code
            when 401
              raise Fog::Cosmic::Compute::Unauthorized, error_text
            when 431
              raise Fog::Cosmic::Compute::BadRequest, error_text
            else
              raise Fog::Cosmic::Compute::Error, error_text
            end
          end

        end
      end # Real

      class Mock
        def initialize(options={})
          @cosmic_api_key = options[:cosmic_api_key]
          @cosmic_project_id = Fog.credentials[:cosmic_project_id] || Fog::Cosmic.uuid
        end

        def self.data
          @data ||= begin
            zone_id     = Fog.credentials[:cosmic_zone_id]             || Fog::Cosmic.uuid
            image_id    = Fog.credentials[:cosmic_template_id]         || Fog::Cosmic.uuid
            flavor_id   = Fog.credentials[:cosmic_service_offering_id] || Fog::Cosmic.uuid
            network_id  = (Array(Fog.credentials[:cosmic_network_ids]) || [Fog::Cosmic.uuid]).first
            domain_name = "exampleorg"
            account_id, user_id, domain_id = Fog::Cosmic.uuid, Fog::Cosmic.uuid, Fog::Cosmic.uuid
            domain = {
              "id"               => domain_id,
              "name"             => domain_name,
              "level"            => 1,
              "parentdomainid"   => Fog::Cosmic.uuid,
              "parentdomainname" => "ROOT",
              "haschild"         => false,
              "path"             => "ROOT/accountname"
            }
            user = {
              "id"          => user_id,
              "username"    => "username",
              "firstname"   => "Bob",
              "lastname"    => "Lastname",
              "email"       => "email@example.com",
              "created"     => "2012-05-14T16:25:17-0500",
              "state"       => "enabled",
              "account"     => "accountname",
              "accounttype" => 2,
              "domainid"    => domain_id,
              "domain"      => domain_name,
              "apikey"      => Fog::Cosmic.uuid,
              "secretkey"   => Fog::Cosmic.uuid
            }
            {
              :users    => { user_id    => user },
              :networks => { network_id => {
                "id"                          => network_id,
                "name"                        => "10.56.23.0/26",
                "displaytext"                 => "10.56.23.0/26",
                "broadcastdomaintype"         => "Vlan",
                "traffictype"                 => "Guest",
                "gateway"                     => "10.56.23.1",
                "netmask"                     => "255.255.255.192",
                "cidr"                        => "10.56.23.0/26",
                "zoneid"                      => zone_id,
                "zonename"                    => "zone-00",
                "networkofferingid"           => "af0c9bd5-a1b2-4ad0-bf4b-d6fa9b1b9d5b",
                "networkofferingname"         => "DefaultSharedNetworkOffering",
                "networkofferingdisplaytext"  => "Offering for Shared networks",
                "networkofferingavailability" => "Optional",
                "issystem"                    => false,
                "state"                       => "Setup",
                "related"                     => "86bbc9fc-d92e-49db-9fdc-296189090017",
                "broadcasturi"                => "vlan://800",
                "dns1"                        => "10.0.80.11",
                "type"                        => "Shared",
                "vlan"                        => "800",
                "acltype"                     => "Domain",
                "subdomainaccess"             => true,
                "domainid"                    => domain_id,
                "domain"                      => "ROOT",
                "service" => [
                  {"name" => "UserData"},
                  {"name" => "Dhcp"},
                  {
                    "name"       => "Dns",
                    "capability" => [
                      {
                        "name"                       => "AllowDnsSuffixModification",
                        "value"                      => "true",
                        "canchooseservicecapability" => false
                      }
                    ]
                }],
                "networkdomain"     => "cs1cloud.internal",
                "physicalnetworkid" => "8f4627c5-1fdd-4504-8a92-f61b4e9cb3e3",
                "restartrequired"   => false,
                "specifyipranges"   => true}
              },
              :public_ip_addresses => { "0e276270-7950-4483-bf21-3dc897dbe08a" => {
                "id"                => "0e276270-7950-4483-bf21-3dc897dbe08a",
                "ipaddress"         => "192.168.200.2",
                "allocated"         => "2014-11-26T22:32:39+0000",
                "zoneid"            => "0e276270-7950-4483-bf21-3dc897dbe08a",
                "zonename"          => "Toronto",
                "issourcenat"       => false,
                "projectid"         => "f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1",
                "project"           => "TestProject",
                "domainid"          => "f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1",
                "domain"            => "TestDomain",
                "forvirtualnetwork" => true,
                "isstaticnat"       => false,
                "issystem"          => false,
                "associatednetworkid" => "f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1",
                "associatednetworkname" => "TestNetwork",
                "networkid"         => "f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1",
                "state"             => "Allocated",
                "physicalnetworkid" => "f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1",
                "tags"              => []
              }},
              :zones => { zone_id => {
                "id"                    => zone_id,
                "name"                  => "zone-00",
                "domainid"              => 1,
                "domainname"            => "ROOT",
                "networktype"           => "Advanced",
                "allocationstate"       => "Enabled",
                "zonetoken"             => Fog::Cosmic.uuid,
                "dhcpprovider"          => "VirtualRouter"}},
              :images => { image_id => {
                "id"              => image_id,
                "name"            => "CentOS 5.6(64-bit) no GUI (XenServer)",
                "displaytext"     => "CentOS 5.6(64-bit) no GUI (XenServer)",
                "ispublic"        => true,
                "created"         => "2012-05-09T15:29:33-0500",
                "isready"         => true,
                "passwordenabled" => false,
                "format"          => "VHD",
                "isfeatured"      => true,
                "crossZones"      => true,
                "ostypeid"        => "a6a6694a-18f5-4765-8418-2b7a5f37cd0f",
                "ostypename"      => "CentOS 5.3 (64-bit)",
                "account"         => "system",
                "zoneid"          => zone_id,
                "zonename"        => "zone-00",
                "status"          => "Download Complete",
                "size"            => 21474836480,
                "templatetype"    => "BUILTIN",
                "domain"          => "ROOT",
                "domainid"        => "6023b6fe-5bef-4358-bc76-9f4e75afa52f",
                "isextractable"   => true,
                "checksum"        => "905cec879afd9c9d22ecc8036131a180",
                "hypervisor"      => "Xen"
              }},
              :flavors => { flavor_id => {
                "id"          => flavor_id,
                "name"        => "Medium Instance",
                "displaytext" => "Medium Instance",
                "cpunumber"   => 1,
                "cpuspeed"    => 1000,
                "memory"      => 1024,
                "created"     => "2012-05-09T14:48:36-0500",
                "storagetype" => "shared",
                "offerha"     => false,
                "limitcpuuse" => false,
                "issystem"    => false,
                "defaultuse"  => false
              }},
              :accounts => { account_id => {
                "id"                => account_id,
                "name"              => "accountname",
                "accounttype"       => 2,
                "domainid"          => domain_id,
                "domain"            => domain_name,
                "receivedbytes"     => 0,
                "sentbytes"         => 0,
                "vmlimit"           => "Unlimited",
                "vmtotal"           => 0,
                "vmavailable"       => "Unlimited",
                "iplimit"           => "Unlimited",
                "iptotal"           => 0,
                "ipavailable"       => "Unlimited",
                "volumelimit"       => "Unlimited",
                "volumetotal"       => 0,
                "volumeavailable"   => "Unlimited",
                "snapshotlimit"     => "Unlimited",
                "snapshottotal"     => 0,
                "snapshotavailable" => "Unlimited",
                "templatelimit"     => "Unlimited",
                "templatetotal"     => 0,
                "templateavailable" => "Unlimited",
                "vmstopped"         => 0,
                "vmrunning"         => 0,
                "projectlimit"      => "Unlimited",
                "projecttotal"      => 1,
                "projectavailable"  => "Unlimited",
                "networklimit"      => "Unlimited",
                "networktotal"      => 0,
                "networkavailable"  => "Unlimited",
                "state"             => "enabled",
                "user"              => [user]}
              },
              :domains         => {domain_id => domain},
              :servers         => {},
              :jobs            => {},
              :volumes         => {
                "89198f7c-0245-aa1d-136a-c5f479ef9db7" => {
                  "id"=> "89198f7c-0245-aa1d-136a-c5f479ef9db7",
                  "name"=>"test volume",
                  "zoneid"=> zone_id,
                  "zonename"=>"zone-00",
                  "type"=>"DATADISK",
                  "deviceid"=>1,
                  "virtualmachineid"=> "51dcffee-5f9f-29a4-acee-2717e1a3656b",
                  "vmname"=>"i-2824-11621-VM",
                  "vmdisplayname"=>"test vm",
                  "vmstate"=>"Running",
                  "size"=>17179869184,
                  "created"=>"2013-04-16T12:33:41+0000",
                  "state"=>"Ready",
                  "account"=> 'accountname',
                  "domainid"=> domain_id,
                  "domain"=> domain_name,
                  "storagetype"=>"shared",
                  "hypervisor"=>"KVM",
                  "diskofferingid"=> "cc4de87d-672d-4353-abb5-6a8a4c0abf59",
                  "diskofferingname"=>"Small Disk",
                  "diskofferingdisplaytext"=>"Small Disk [16GB Disk]",
                  "storage"=>"ps1",
                  "attached"=>"2013-04-16T12:34:07+0000",
                  "destroyed"=>false,
                  "isextractable"=>false
                  },
                },
              :snapshots       => {},
              :disk_offerings  => {
                "cc4de87d-672d-4353-abb5-6a8a4c0abf59" => {
                  "id"           => "cc4de87d-672d-4353-abb5-6a8a4c0abf59",
                  "domainid"     => domain_id,
                  "domain"       => domain_name,
                  "name"         => "Small Disk",
                  "displaytext"  => "Small Disk [16GB Disk]",
                  "disksize"     => 16,
                  "created"      => "2013-02-21T03:12:520300",
                  "iscustomized" => false,
                  "storagetype"  =>  "shared"
                },
                "d5deeb0c-de03-4ebf-820a-dc74221bcaeb" => {
                  "id"           => "d5deeb0c-de03-4ebf-820a-dc74221bcaeb",
                  "domainid"     => domain_id,
                  "domain"       => domain_name,
                  "name"         => "Medium Disk",
                  "displaytext"  => "Medium Disk [32GB Disk]",
                  "disksize"     => 32,
                  "created"      => "2013-02-21T03:12:520300",
                  "iscustomized" => false,
                  "storagetype"  => "shared"
                }
              },
              :network_offerings  => {
                "cc4de87d-672d-4353-abb5-6a8a4c0abf59" => {
                  "id"                => "cc4de87d-672d-4353-abb5-6a8a4c0abf59",
                  "name"              => "Shared Network",
                  "displaytext"       => "Shared Network",
                  "traffictype"       => "Guest",
                  "isdefault"         => true,
                  "specifyvlan"       => true,
                  "conservemode"      => true,
                  "specifyipranges"   => true,
                  "availability"      =>  "Optional",
                  "networkrate"       =>  200,
                  "state"             =>  "Enabled",
                  "guestiptype"       =>  "Shared",
                  "serviceofferingid" =>  "f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1"
                }
              },
              :firewall_rules => {
                "f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1" => {
                  "id"=> "f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1",
                  "protocol"=> "tcp",
                  "startport" => "443",
                  "endport" => "443",
                  "ipaddressid" => "f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1",
                  "networkid"=> "31c4b26e-4be9-11e4-8304-00163e5b5f54",
                  "ipaddress" => "192.168.200.1",
                  "state" => "Active",
                  "cidrlist" => "255.255.255.0/24",
                  "tags" => []
                }
              },
              :egress_firewall_rules => {
                "f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1" => {
                  "id"=>"f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1",
                  "protocol"=>"tcp",
                  "networkid"=> "31c4b26e-4be9-11e4-8304-00163e5b5f54",
                  "state"=>"Active",
                  "cidrlist"=>"10.2.1.0/24",
                  "tags"=>[]
                }
              },
              :port_forwarding_rules => {
                "8f4627c5-1fdd-4504-8a92-f61b4e9cb3e3" => {
                  'id' => "8f4627c5-1fdd-4504-8a92-f61b4e9cb3e3",
                  'privateport' => "25",
                  'privateendport' => "25",
                  'protocol' => "tcp",
                  'publicport' => "25",
                  'publicendport' => "25",
                  'virtualmachineid' => "8f4627c5-1fdd-4504-8a92-f61b4e9cb3e3",
                  'virtualmachinename' => "LoadBalancer",
                  'virtualmachinedisplayname' => "LoadBalancer",
                  'ipaddressid' => "f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1",
                  'ipaddress' => "192.168.200.200",
                  'state' => "Active",
                  'cidrlist' => "",
                  'tags' => []
                }
              },
              :os_types  => {
                "51ef854d-279e-4e68-9059-74980fd7b29b" => {
                  "id"           => "51ef854d-279e-4e68-9059-74980fd7b29b",
                  "oscategoryid" => "56f67279-e082-45c3-a01c-d290d6cd4ce2",
                  "description"  => "Asianux 3(32-bit)"
                  },
                "daf124c8-95d8-4756-8e1c-1871b073babb" => {
                  "id"           => "daf124c8-95d8-4756-8e1c-1871b073babb",
                  "oscategoryid" => "56f67279-e082-45c3-a01c-d290d6cd4ce2",
                  "description"  => "Asianux 3(64-bit)"
                  }
              }
            }
          end
        end

        def self.reset
          @data = nil
        end

        def data
          self.class.data
        end

        def reset_data
          self.class.data.delete(@cosmic_api_key)
        end

      end
    end # Compute
  end # Cosmic
end # Fog
