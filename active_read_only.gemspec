# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_read_only/version'

Gem::Specification.new do |spec|
  spec.name          = "active_read_only"
  spec.version       = ActiveReadOnly::VERSION
  spec.authors       = ["Clint Shryock"]
  spec.email         = ["clint@ctshryock.com"]
  spec.description   = "Make AR be read-only"
  spec.summary       = "read-only"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
