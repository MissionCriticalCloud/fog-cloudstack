Shindo.tests("Fog::Compute[:cosmic] | servers", ['cosmic']) do
  @server_params = {}.tap do |hash|
    [:zone_id, :network_ids, :template_id, :service_offering_id].each do |k|
      key = "cosmic_#{k}".to_sym
      if Fog.credentials[key]
        hash[k]= Fog.credentials[key]
      end
    end
  end
  @server = Fog::Compute[:cosmic].servers.create(@server_params)

  tests('#create').succeeds do
    @server.wait_for { ready? }
  end

  tests('#destroy').succeeds do
    @server.destroy.wait_for { ready? }
  end

end
