# frozen_string_literal: true

require_relative "lib/timecopyright_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "timecopyright_view_tool"
  spec.version       = TimecopyrightViewTool::VERSION
  spec.authors       = ["barakadan421@gmail.com"]
  spec.email         = ["barakadan421@gmail.com"]

  spec.summary       = "This gem returns the current year and a copyright statement for use in Ruby on Rails views. It provides an easy and convenient way to display the current year and a copyright notice in your application."
  spec.description   = "This gem is designed to help you display the current year and a copyright statement in your Ruby on Rails views. It provides a simple and convenient way to keep your views up to date with the current year, as well as to display a copyright notice for your application. The gem is easy to use and can be easily integrated into your application with just a few lines of code. Whether you're building a new application or updating an existing one, this gem can help you keep your views up to date and accurate."
  spec.homepage      = "http://timecopyright.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_development_dependency "bundler", "~> 1.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"


  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
