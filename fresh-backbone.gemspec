# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$:.unshift(lib) unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name           = "fresh-backbone"
  s.version        = "1.0.0.1"
  s.platform       = Gem::Platform::RUBY
  s.authors        = ["Tangerine Cat"]
  s.email          = ["kaineer@gmail.com"]

  s.summary        = "Backbone, underscore and jQuery, fetched from cdnjs.com and packed into asset pipe"
  s.description    = "Backbone assets for rails or sprocket project"

  s.homepage       = "https://github.com/kaineer/fresh-backbone"

  s.files          =
    Dir["vendor/assets/javascripts/**/*.js*"] +
    Dir["lib/**/*.rb"]

  s.require_path = "lib"
end
