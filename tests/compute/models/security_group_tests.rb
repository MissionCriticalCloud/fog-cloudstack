Shindo.tests("Fog::Compute[:cosmic] | security_groups", ['cosmic']) do
  @params = {
    :name => "cosmic.sg.#{Time.now.to_i}"
  }

  model_tests(Fog::Compute[:cosmic].security_groups, @params, true) do
    responds_to(:rules)
  end
end
