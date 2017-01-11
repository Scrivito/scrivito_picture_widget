$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scrivito_picture_widget/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scrivito_picture_widget"
  s.version     = ScrivitoPictureWidget::VERSION
  s.authors     = ["Scrivito"]
  s.email       = ["support@scrivito.de"]
  s.homepage    = "https://scrivito.com"
  s.summary     = "A responsive image widget for scrivito using the picture tag"
  s.description = "A responsive image widget for scrivito using the picture tag"
  s.license     = "LGPL-3"

  s.files = Dir[
    "{app,lib,scrivito}/**/*",
    "LICENSE",
    "Rakefile",
  ]

  s.add_dependency 'scrivito'
end
