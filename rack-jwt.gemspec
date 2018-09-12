# encoding: UTF-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/jwt/version'

Gem::Specification.new do |spec|
  spec.name          = 'rack-jwt'
  spec.version       = Rack::JWT::VERSION
  spec.authors       = ['Mr. Eigenbart', 'Emili Parreno']
  spec.email         = ['emili@eparreno.com']
  spec.summary       = 'Rack middleware that provides authentication based on JSON Web Tokens.'
  spec.description   = 'Rack middleware that provides authentication based on JSON Web Tokens.'
  spec.homepage      = 'https://github.com/eparreno/rack-jwt'
  spec.license       = 'MIT'

  spec.files         = Dir.glob('lib/**/*') + %w(LICENSE.txt README.md)
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']
  spec.platform      = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.2.2'

  spec.add_development_dependency 'bundler',   '~> 1.16'
  spec.add_development_dependency 'rake',      '~> 12.3'
  spec.add_development_dependency 'rack-test', '~> 1.1'
  spec.add_development_dependency 'rspec',     '~> 3.8'
  spec.add_development_dependency 'simplecov', '~> 0.16'

  # without it bundler trying to get last rack version, but it needs ruby >= '2.2.2'
  spec.add_runtime_dependency 'rack', '~> 2.0'
  spec.add_runtime_dependency 'jwt',  '~> 2.1'
end
