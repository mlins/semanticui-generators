# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'semanticui/generators/version'

Gem::Specification.new do |spec|
  spec.name          = "semanticui-generators"
  spec.version       = Semanticui::Generators::VERSION
  spec.authors       = ["Matt Lins"]
  spec.email         = ["mattlins@gmail.com"]
  spec.summary       = %q{SemanticUI generators for Rails}
  spec.description   = %q{SemanticUI Generators provides SemanticUI generators for Rails 4 (supported Rails >= 3.1)}
  spec.homepage      = "https://github.com/mlins/semanticui-generators"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
