# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quench/version'

Gem::Specification.new do |spec|
  spec.name          = "quench"
  spec.version       = Quench::VERSION
  spec.authors       = ["Robert Jackson"]
  spec.email         = ["robert.w.jackson@me.com"]
  spec.description   = %q{Use TCP Tunnels between two firewalled machines. Primarily used for ssh access to a machine inside a firewall.}
  spec.summary       = %q{Create TCP tunnels to quench your firewall.}
  spec.homepage      = "https://github.com/rjackson/quench"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "celluloid", "~> 0.14.0pre"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.13"
end
