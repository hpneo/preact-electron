require_relative "lib/webpacker/preact/version"

Gem::Specification.new do |spec|
  spec.name        = "webpacker-preact"
  spec.version     = Webpacker::Preact::VERSION
  spec.authors     = ["hpneo"]
  spec.email       = ["hpneo@hotmail.com"]
  spec.homepage    = "https://github.com/hpneo/webpacker-preact"
  spec.summary     = "Preact integration for Webpacker."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hpneo/webpacker-preact"
  spec.metadata["changelog_uri"] = "https://github.com/hpneo/webpacker-preact/blob/master/CHANGELOG.md"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 6.0.0"
  spec.add_dependency "webpacker"
  spec.add_development_dependency "rubocop", "~> 0.76"
  spec.add_development_dependency "rubocop-airbnb", "~> 3.0.2"
end
