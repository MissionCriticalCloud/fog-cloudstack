require 'bundler/gem_tasks'

task :default => :test

mock = ENV['FOG_MOCK'] || 'true'
task :test do
  Bundler.with_unbundled_env do
    sh("export FOG_MOCK=#{mock} && bundle exec shindont")
  end
end
