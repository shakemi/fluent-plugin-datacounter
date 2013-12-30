# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "fluent-plugin-datacounter"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kazuyuki Sakemi"]
  s.email       = ["shakeren20@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Output filter plugin to count messages that matches specified conditions}
  s.description = %q{Output filter plugin to count messages that matches specified conditions}

  s.rubyforge_project = "fluent-plugin-datacounter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
	s.add_development_dependency "rake"
	s.add_runtime_dependency "fluentd"
end