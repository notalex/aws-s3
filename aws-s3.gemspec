$:.push File.expand_path('../lib', __FILE__)
require 'aws/s3/version'

Gem::Specification.new do |gem|
  gem.name          = 'aws-s3'
  gem.version       = AWS::S3::Version
  gem.authors       = ["BlackDuck Software"]
  gem.email         = ["info@blackducksoftware.com"]
  gem.summary       = %q{AWS-S3 gem}
  gem.description   = %q{Ruby implementation of Amazon's S3 REST API}
  gem.license       = "MIT"

  gem.files         = `git ls-files -z`.split("\x0")
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^test/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'builder', '>= 0'
  gem.add_runtime_dependency 'mime-types', '>= 0'
  gem.add_runtime_dependency 'xml-simple', '>= 0'
end
