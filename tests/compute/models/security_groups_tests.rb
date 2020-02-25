Shindo.tests("Fog::Compute[:cosmic] | security_group", ['cosmic']) do
  @params = {
    :name => "cosmic.sg.#{Time.now.to_i}"
  }

  collection_tests(Fog::Compute['cosmic'].security_groups, @params, true) do
    responds_to(:rules)
  end
end
