# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dumper/version"

Gem::Specification.new do |s|
  s.name        = "dumper"
  s.version     = Dumper::VERSION
  s.authors     = ["Marc Hadley"]
  s.email       = ["mhadley@mitre.org"]
  s.homepage    = ""
  s.summary     = %q{Dumper: Dump patient records to file}
  s.description = %q{Dumper: Dump patient records to file}

  s.rubyforge_project = "dumper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
#  s.add_dependency 'health-data-standards'
  s.add_dependency 'rake'
  s.add_dependency 'mongoid', '~> 3.0.6'
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
