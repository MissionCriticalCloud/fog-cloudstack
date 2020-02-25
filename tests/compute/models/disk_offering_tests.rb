Shindo.tests("Fog::Compute[:cosmic] | disk_offering", ['cosmic']) do
  @params = {
    :name => "new disk offering",
    :display_text => 'New Disk Offering'
  }
  model_tests(Fog::Compute[:cosmic].disk_offerings, @params, true)
end
