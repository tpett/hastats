# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hastats/version"

Gem::Specification.new do |s|
  s.name        = "hastats"
  s.version     = HAStats::VERSION
  s.authors     = ["Travis Petticrew"]
  s.email       = ["bobo@petticrew.net"]
  s.homepage    = ""
  s.summary     = %q{A tool for interfacing with HAProxy through UNIX sockets}
  s.description = %q{Allows reading and writing to the haproxy stats socket.  See the HAProxy documentation for available commands.}

  s.rubyforge_project = "hastats"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "thor", '~>0.14.6'
  s.add_runtime_dependency "json", '>=1'
end
