
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "banking_day/version"

Gem::Specification.new do |spec|
  spec.name          = "banking-day"
  spec.version       = BankingDay::VERSION
  spec.authors       = ["psoliver92"]
  spec.email         = ["psoliver92@gmail.com"]

  spec.summary       = %q{A gem to determine when the next banking day in a country is or if a specific date is a banking day.}
  spec.description   = %q{This gem will provide the next banking day in a given country and also determine if a given date is a banking day or not.}
  spec.homepage      = "https://github.com/psoliver92/banking_day"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_runtime_dependency 'activesupport', '~> 5.2'
  spec.add_runtime_dependency 'holidays', '~> 6.4.0'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency 'timecop', '0.8.1'
end
