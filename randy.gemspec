# -*- encoding: utf-8 -*-
require File.expand_path("../lib/randy/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dan Tao"]
  gem.email         = ["daniel.tao@gmail.com"]
  gem.description   = %q{Randy makes it that much easier to generate random stuff}
  gem.summary       = %q{Randy makes it that much easier to generate random stuff}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.name          = "randy"
  gem.require_paths = ["lib"]
  gem.version       = Randy::VERSION
end
