# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mojave/version'

Gem::Specification.new do |spec| # rubocop:disable Metrics/BlockLength
  spec.name          = 'mojave'
  spec.version       = Mojave::VERSION
  spec.authors       = ['Tad Thorley']
  spec.email         = ['phaedryx@gmail.com']

  spec.summary       = 'Dry up your GraphQL'
  spec.description   = <<~DESCRIPTION
    Mojave makes it easier to create a GraphQL API by dynamically generating it rather
    than hardcoding it by hand.
  DESCRIPTION
  spec.homepage      = 'https://github.com/allydvm/mojave'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.4'

  spec.add_dependency('actionpack', '>= 4.2', '<= 5.2')
  spec.add_dependency('railties', '>= 4.2', '<= 5.2')

  spec.add_development_dependency 'bundler', '~> 1.17.3'
  spec.add_development_dependency 'byebug', '~> 10.0.1'
  spec.add_development_dependency 'minitest', '~> 5.11'
  spec.add_development_dependency 'pry-byebug', '~> 3.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.54'
end
