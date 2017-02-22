# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'confirm/with/reveal/version'

Gem::Specification.new do |spec|
  spec.name          = "confirm-with-reveal"
  spec.version       = Confirm::With::Reveal::VERSION
  spec.authors       = ["Stephen Myers"]
  spec.email         = ["scmyers11@gmail.com"]

  spec.summary       = %q{Wrapper for confirm with reveal.}
  spec.description   = %q{Wrapper for for agoragames confirm-with-reveal. That library can be found here: https://github.com/agoragames/confirm-with-reveal }
  spec.homepage      = "https://github.com/impresscareer/confirm-with-reveal-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "railties", "~> 4.1"

end
