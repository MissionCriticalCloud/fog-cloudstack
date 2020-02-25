Shindo.tests("Fog::Compute[:cosmic] | public_ip_addresses", ['cosmic']) do
    collection_tests(Fog::Compute[:cosmic].public_ip_addresses, {}, true)
end
