Shindo.tests("Fog::Compute[:cosmic] | volumes", ['cosmic']) do
  @params = {:name => "somevolume"}.tap do |hash|
    [:zone_id, :disk_offering_id].each do |k|
      key = "cosmic_#{k}".to_sym
      if Fog.credentials[key]
        hash[k]= Fog.credentials[key]
      end
    end
  end

  collection_tests(Fog::Compute[:cosmic].volumes, @params, true) do
    @instance.wait_for { ready? }
  end
end
