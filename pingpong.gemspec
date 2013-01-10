# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pingpong/version'

Gem::Specification.new do |gem|
  gem.name          = "pingpong"
  gem.version       = Pingpong::VERSION
  gem.authors       = ["janno-p"]
  gem.email         = ["janno.poldma@gmail.com"]
  gem.description   = %q{Simple Pong game clone using Ruby programming language}
  gem.summary       = %q{Simple Pong game clone.}
  gem.homepage      = "http://github.com/janno-p/pingpong"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency("gosu", "~> 0.7")
end
