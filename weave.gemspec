# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'stitch_fix/weave/version'

Gem::Specification.new do |s|
  s.name        = "weave"
  s.version     = StitchFix::Weave::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Stitch Fix Engineering']
  s.email       = ['eng@stitchfix.com']
  s.homepage    = "https://github.com/stitchfix/weave#readme"
  s.summary     = "The Stitch Fix Weave Style Library"
  s.description = "Stitch Fix design, functionality, and pragmatism rolled into one."
  
  s.files         = Dir["{lib, scss, js}/**/*"] + ["Rakefile", "README.rdoc"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib, scss"]
  s.add_development_dependency("stitchfix-y")
  s.add_development_dependency("rake")
  s.add_development_dependency("rspec")
end
