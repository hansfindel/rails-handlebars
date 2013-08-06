# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/handlebars/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-handlebars"
  spec.version       = Rails::Handlebars::VERSION
  spec.authors       = ["Hans"]
  spec.email         = ["hanstrax@gmail.com"]
  spec.description   = %q{Handle handlebars templates with the asset pipeline}
  spec.summary       = %q{Handle handlebars templates with the asset pipeline}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version     = '>= 1.8.7'
  spec.add_dependency 'sprockets', ['> 2.0.3']

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
