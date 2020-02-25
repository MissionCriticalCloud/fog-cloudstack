Shindo.tests('Fog::Compute[:cosmic] | disk offering requests', ['cosmic']) do

  @disk_offerings_format = {
    'listdiskofferingsresponse'  => {
      'count' => Integer,
      'diskoffering' => [
        'id' => String,
        'created' => String,
        'disksize' => Integer,
        'displaytext' => String,
        'domain' => Fog::Nullable::String,
        'domainid' => Fog::Nullable::String,
        'iscustomized' => Fog::Boolean,
        'name' => String,
        'storagetype' => String,
        'tags' => Fog::Nullable::String
      ]
    }
  }

  tests('success') do

    tests('#list_disk_offerings').formats(@disk_offerings_format) do
      Fog::Compute[:cosmic].list_disk_offerings
    end

  end

end
