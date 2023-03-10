require_relative 'lib/trackonomics/version'

Gem::Specification.new do |spec|
  spec.name          = 'trackonomics'
  spec.version       = Trackonomics::VERSION
  spec.authors       = ['gocertify DevTeam']
  spec.email         = ['dev@gocertify.me']

  spec.summary       = 'Trackonomics API client'
  spec.description   = 'Trackonomics API client'
  spec.homepage      = 'https://github.com/gocertify/trackonomics'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/gocertify/trackonomics'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'http', '>= 3.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 12.0'
end
