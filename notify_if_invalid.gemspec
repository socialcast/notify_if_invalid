# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notify_if_invalid/version'

Gem::Specification.new do |spec|
  spec.name          = "notify_if_invalid"
  spec.version       = NotifyIfInvalid::VERSION
  spec.authors       = ["Ryan Sonnek"]
  spec.email         = ["ryan@socialcast.com"]
  spec.description   = %q{notify exception monitoring system when model object is invalid}
  spec.summary       = %q{notify exception monitoring system when model object is invalid}
  spec.homepage      = "http://github.com/socialcast/notify_if_invalid"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 3.0"
  spec.add_dependency "airbrake", ">= 3.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
