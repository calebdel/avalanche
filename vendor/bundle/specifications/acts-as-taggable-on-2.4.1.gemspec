# -*- encoding: utf-8 -*-
# stub: acts-as-taggable-on 2.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "acts-as-taggable-on"
  s.version = "2.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Bleigh", "Joost Baaij"]
  s.date = "2013-05-07"
  s.description = "With ActsAsTaggableOn, you can tag a single model on several contexts, such as skills, interests, and awards. It also provides other advanced functionality."
  s.email = ["michael@intridea.com", "joost@spacebabies.nl"]
  s.homepage = "https://github.com/mbleigh/acts-as-taggable-on"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.9"
  s.summary = "Advanced tagging for Rails."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["< 5", ">= 3"])
      s.add_development_dependency(%q<rspec-rails>, ["= 2.13.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
      s.add_development_dependency(%q<ammeter>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<mysql2>, ["~> 0.3.7"])
      s.add_development_dependency(%q<pg>, [">= 0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["< 5", ">= 3"])
      s.add_dependency(%q<rspec-rails>, ["= 2.13.0"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
      s.add_dependency(%q<ammeter>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<mysql2>, ["~> 0.3.7"])
      s.add_dependency(%q<pg>, [">= 0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["< 5", ">= 3"])
    s.add_dependency(%q<rspec-rails>, ["= 2.13.0"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
    s.add_dependency(%q<ammeter>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<mysql2>, ["~> 0.3.7"])
    s.add_dependency(%q<pg>, [">= 0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
  end
end
