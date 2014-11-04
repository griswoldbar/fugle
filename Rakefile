require "bundler/gem_tasks"

desc "Open an irb session preloaded with this library"
task :default => :console
task :console do
  sh "irb -rubygems -I lib -r console.rb"
end