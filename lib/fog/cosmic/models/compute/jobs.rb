require 'fog/core/collection'
require 'fog/cosmic/models/compute/job'

module Fog
  module Cosmic
    class Compute
      class Jobs < Fog::Collection
        model Fog::Cosmic::Compute::Job

        def all
          data = service.list_async_jobs["listasyncjobsresponse"]["asyncjobs"] || []
          load(data)
        end

        def get(job_id)
          if job = service.query_async_job_result('jobid' => job_id)["queryasyncjobresultresponse"]
            new(job)
          end
        rescue Fog::Cosmic::Compute::BadRequest
          nil
        end
      end
    end
  end
end
