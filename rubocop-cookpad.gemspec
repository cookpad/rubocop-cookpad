lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop/cookpad/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-cookpad"
  spec.version       = RuboCop::Cookpad::VERSION
  spec.authors       = ["David Stosik"]
  spec.email         = ["david.stosik+git-noreply@gmail.com"]

  spec.summary       = %q{Custom RuboCop cops used at Cookpad}
  spec.description   = <<-DESCRIPTION
    Custom RuboCop cops used at Cookpad
    A RuboCop extension that allows Cookpad developers to define and enforce their own coding conventions.
  DESCRIPTION
  spec.homepage      = "https://github.com/cookpad/rubocop-cookpad"

  spec.files = `git ls-files bin config lib`
               .split($RS)

  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "changelog_uri" => "https://github.com/cookpad/rubocop-cookpad/blob/master/CHANGELOG.md",
    "source_code_uri" => "https://github.com/cookpad/rubocop-cookpad"
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.add_runtime_dependency "rubocop", ">= 0.70.0"

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
