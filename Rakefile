require 'rubygems/package_task'
require 'rspec/core/rake_task'

$: << File.join(File.dirname(__FILE__),'lib')
require 'stitch_fix/y/tasks'

include Rake::DSL

gemspec = eval(File.read('stitchfix-weave.gemspec'))
Gem::PackageTask.new(gemspec) {}
RSpec::Core::RakeTask.new(:spec)
StitchFix::Y::ReleaseTask.for_rubygems(gemspec)
StitchFix::Y::VersionTask.for_rubygems(gemspec)

task :default => :spec

bower_json = File.join(File.dirname(__FILE__),'bower.json')
StitchFix::Y::ReleaseTask.for_bower(bower_json)
StitchFix::Y::VersionTask.for_bower(bower_json)


