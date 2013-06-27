# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metric_space/version'

Gem::Specification.new do |spec|
  spec.name          = "metric_space"
  spec.version       = MetricSpace::VERSION
  spec.authors       = ["Aleksander Malaszkiewicz"]
  spec.email         = ["info@fractalsoft.org"]
  spec.summary       = %q{Count distance between points in selected metric space}
  spec.homepage      = "https://github.com/fractalsoft/metric_space"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
