module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all pending asynchronous jobs for the account.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listAsyncJobs.html]
        def list_async_jobs(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listAsyncJobs') 
          else
            options.merge!('command' => 'listAsyncJobs')
          end
          request(options)
        end
      end
 
      class Mock
        def list_async_jobs(options={})
          # FIXME: support paging
          jobs = self.data[:jobs]
          {
            'listasyncjobsresponse' => {
              'count' => jobs.size,
              'asyncjobs' => jobs
            }
          }
        end
      end 
    end
  end
end

