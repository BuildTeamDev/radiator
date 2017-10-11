# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'radiator/version'

Gem::Specification.new do |spec|
  spec.name = 'radiator'
  spec.version = Radiator::VERSION
  spec.authors = ['Anthony Martin']
  spec.email = ['radiator@martin-studio.com']

  spec.summary = %q{STEEM RPC Ruby Client}
  spec.description = %q{Client for accessing the STEEM blockchain.}
  spec.homepage = 'https://github.com/inertia186/radiator'
  spec.license = 'CC0-1.0'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15', '>= 1.15.4'
  spec.add_development_dependency 'rake', '~> 12.1', '>= 12.1.0'
  spec.add_development_dependency 'minitest', '~> 5.9', '>= 5.9.0'
  spec.add_development_dependency 'minitest-line', '~> 0.6.3'
  spec.add_development_dependency 'webmock', '~> 3.1', '>= 3.1.0'
  spec.add_development_dependency 'simplecov', '~> 0.15.1'
  spec.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.3'
  spec.add_development_dependency 'faraday', '~> 0.9.2'
  spec.add_development_dependency 'typhoeus', '~> 1.0', '>= 1.0.2'
  spec.add_development_dependency 'yard', '~> 0.9.9'
  spec.add_development_dependency 'pry', '~> 0.11.1'
  spec.add_development_dependency 'awesome_print', '~> 1.7', '>= 1.7.0'
  
  # Maximum for net-http-persistent is 2.9.4, required by ruby-2.0.0-p645, which
  # is the darwin default at the moment.
  spec.add_dependency('net-http-persistent', '~> 2.9', '>= 2.9.4')
  spec.add_dependency('json', '~> 2.0', '>= 2.0.2')
  spec.add_dependency('logging', '~> 2.2', '>= 2.2.0')
  spec.add_dependency('hashie', '~> 3.5', '>= 3.5.5')
  spec.add_dependency('bitcoin-ruby', '0.0.11')
  spec.add_dependency('ffi', '1.9.18')
end
