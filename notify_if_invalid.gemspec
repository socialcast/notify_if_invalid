# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'notify_if_invalid/version'

Gem::Specification.new do |gem|
  gem.name          = "notify_if_invalid"
  gem.version       = NotifyIfInvalid::VERSION
  gem.authors       = ["Ryan Sonnek"]
  gem.email         = ["ryan@socialcast.com"]
  gem.description   = %q{notify exception monitoring system when model object is invalid}
  gem.summary       = %q{notify exception monitoring system when model object is invalid}
  gem.homepage      = "http://github.com/socialcast/notify_if_invalid"

  gem.add_dependency 'activerecord', '>= 3.2'
  gem.add_development_dependency 'rake'


  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
