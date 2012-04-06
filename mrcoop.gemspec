require File.expand_path('../lib/mrcoop/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Evan Walsh"]
  gem.email         = ["evan@massivedanger.com"]
  gem.description   = %q{Interact with Co-op via the command line}
  gem.summary       = %q{Interact with Co-op via the command line}
  gem.homepage      = "http://github.com/evanwalsh/mrcoop"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mrcoop"
  gem.require_paths = ["lib"]
  gem.version       = MrCoop::VERSION

  gem.required_ruby_version = '>= 1.9.2'

  gem.add_development_dependency "rake"
  gem.add_development_dependency "minitest", "~> 2.11.3"
  gem.add_development_dependency "guard-minitest", "~> 0.5.0"
  gem.add_development_dependency "turn", "~> 0.9.3"
  gem.add_development_dependency "webmock", "~> 1.8.2"

  if RUBY_PLATFORM.downcase.include?("darwin")
    gem.add_development_dependency "growl", "~> 1.0.3"
  end

  gem.add_dependency "coop", "~> 1.1.0"
  gem.add_dependency "commander", "~> 4.1.2"
  gem.add_dependency "rainbow", "~> 1.1.3"
end
