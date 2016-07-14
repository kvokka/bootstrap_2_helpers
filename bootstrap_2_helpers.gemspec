$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap_2_helpers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap_2_helpers"
  s.version     = Bootstrap2Helpers::VERSION
  s.authors     = ["Kvokka"]
  s.email       = ["root_p@mail.ru"]
  s.homepage    = "https://github.com/kvokka/bootstrap_2_helpers"
  s.summary     = "Bootstrap2Helpers."
  s.description = "Lihgt helpers breadcrumps from bootstrap 2."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 3.0.0"

  s.add_development_dependency "sqlite3"
end
