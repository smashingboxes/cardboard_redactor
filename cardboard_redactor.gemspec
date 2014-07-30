$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cardboard_redactor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cardboard_redactor"
  s.version     = CardboardRedactor::VERSION
  s.authors     = ["Michael Elfassy", "SmashingBoxes"]
  s.email       = ["michael@smashingboxes.com"]
  s.homepage    = "http://smashingboxes.com"
  s.summary     = "Cardboard extras for SmashingBoxes"
  s.description = "This project is closed source."

  s.files      = `git ls-files`.split("\n").sort - %w(.rvmrc .gitignore .keep)
  s.test_files = Dir["test/**/*"]

  s.add_dependency "cardboard_cms", ">= 0.2.0"
  
  s.add_development_dependency "sqlite3"
end
