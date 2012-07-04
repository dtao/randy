# -*- encoding: utf-8 -*-
require File.expand_path("../lib/randy/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dan Tao"]
  gem.email         = ["daniel.tao@gmail.com"]
  gem.description   = %q{Randy makes it that much easier to generate random stuff.}
  gem.summary       = %q{A little library for easily producing random data using Ruby's built-in rand function.}
  gem.homepage      = "http://dtao.github.com/randy/"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.name          = "randy"
  gem.require_paths = ["lib"]
  gem.version       = Randy::VERSION
end
