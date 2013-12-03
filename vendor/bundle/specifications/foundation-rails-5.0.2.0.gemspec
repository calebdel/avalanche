# -*- encoding: utf-8 -*-
# stub: foundation-rails 5.0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "foundation-rails"
  s.version = "5.0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["ZURB"]
  s.date = "2013-11-23"
  s.description = "ZURB Foundation on Sass/Compass"
  s.email = ["foundation@zurb.com"]
  s.homepage = "http://foundation.zurb.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.9"
  s.summary = "ZURB Foundation on Sass/Compass"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_runtime_dependency(%q<sass>, [">= 3.2.0"])
      s.add_runtime_dependency(%q<railties>, [">= 3.1.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<sass>, [">= 3.2.0"])
      s.add_dependency(%q<railties>, [">= 3.1.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<sass>, [">= 3.2.0"])
    s.add_dependency(%q<railties>, [">= 3.1.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
