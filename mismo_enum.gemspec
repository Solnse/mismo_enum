$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mismo_enum/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mismo_enum"
  s.version     = MismoEnum::VERSION
  s.authors     = ["Chad Edie"]
  s.email       = ["chad.edie@pnmac.com"]
  s.homepage    = "https://github.com/Solnse/mismo_enum"
  s.summary     = "MISMO enumerations for use in mortgage banking."
  s.description = s.summary
  s.licenses    = ["MIT"]

  s.files = Dir["{app,config,db,lib}/**/*",
    "MIT-LICENSE", "Rakefile", "README.rdoc"]

end
