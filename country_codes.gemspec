# -*- encoding: utf-8 -*-
require File.expand_path('../lib/country_codes/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["adman65"]
  gem.email         = ["me@broadcastingadam.com"]
  gem.description   = %q{Lookup country related metadata}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/threadedlabs/country_codes"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "country_codes"
  gem.require_paths = ["lib"]
  gem.version       = CountryCodes::VERSION

  gem.add_development_dependency "rake"
end
