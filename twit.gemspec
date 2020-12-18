require_relative 'lib/twit/version'

Gem::Specification.new do |spec|
  spec.name          = "twit"
  spec.license       = "MIT"
  spec.version       = Twit::VERSION
  spec.authors       = ["Christopher Hagmann"]
  spec.email         = ["chagmann@gmail.com"]

  spec.summary       = %q{The Welcoming Information Tracker}
  spec.homepage      = "https://cdhagmann.com"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cdhagmann/twit"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency 'git'
  spec.extensions    = ["ext/twit/extconf.rb"]
end
