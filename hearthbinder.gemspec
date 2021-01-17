require_relative 'lib/hearthbinder/version'

Gem::Specification.new do |spec|
  spec.name          = "hearthbinder"
  spec.version       = Hearthbinder::VERSION
  spec.authors       = ["courserav"]
  spec.email         = ["lvsmlit@gmail.com"]

  spec.summary       = %q{"A ruby cli gem designed to edit a deck in the Hearthstone videogame."}
  spec.description   = %q{"Users can copy a deckcode into the cli and will be able to edit a deck and get a useful information breakdown on it."}
  spec.homepage      = "https://github.com/courserav/hearthbinder.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = "https://github.com/courserav/hearthbinder.git"
  spec.metadata["source_code_uri"] = "https://github.com/courserav/hearthbinder.git"
  spec.metadata["changelog_uri"] = "https://github.com/courserav/hearthbinder.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "2.2.4"
end
