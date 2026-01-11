# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/teamcity/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-teamcity"
  spec.version       = Rspec::Teamcity::VERSION
  spec.authors       = ["Mike Zorn"]
  spec.email         = ["apeherder@gmail.com"]
  spec.summary       = %q{TeamCity rspec reporter}
  spec.description   = <<-EOF
    Provides an rspec reporter that produces teamcity parseable strings. See TC docs:
    https://confluence.jetbrains.com/display/TCD8/Build+Script+Interaction+with+TeamCity#BuildScriptInteractionwithTeamCity-ReportingTests
    EOF
  spec.homepage      = "https://github.com/mike-zorn/rspec-teamcity"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "rspec", ">= 2.14.2", ">= 2.99", "< 4"
end
