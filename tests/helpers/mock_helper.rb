# Use so you can run in mock mode from the command line
#
# FOG_MOCK=true fog

if ENV["FOG_MOCK"] == "true"
  Fog.mock!
end

# if in mocked mode, fill in some fake credentials for us
if Fog.mock?
  Fog.credentials = {
    :cosmic_disk_offering_id      => '',
    :cosmic_host                  => 'http://cosmic.example.org',
    :cosmic_network_ids           => '',
    :cosmic_service_offering_id   => '4437ac6c-9fe3-477a-57ec-60a5a45896a4',
    :cosmic_template_id           => '8a31cf9c-f248-0588-256e-9dbf58785216',
    :cosmic_zone_id               => 'c554c592-e09c-9df5-7688-4a32754a4305',
    :cosmic_project_id            => 'f1f1f1f1-f1f1-f1f1-f1f1-f1f1f1f1f1f1',
  }.merge(Fog.credentials)
end
