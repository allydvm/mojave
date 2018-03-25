
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mojave/version'

Gem::Specification.new do |spec|
  spec.name          = 'mojave'
  spec.version       = Mojave::VERSION
  spec.authors       = ['Tad Thorley']
  spec.email         = ['phaedryx@gmail.com']

  spec.summary       = 'Dry up your rails controllers'
  spec.description   = 'This gem takes care of common controller behavior so that you '\
    'only need to code the differences.'
  spec.homepage      = 'https://github.com/allydvm/mojave'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0').reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.54'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'pry-debug', '~> 3.6'
end
