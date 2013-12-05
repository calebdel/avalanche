# -*- encoding: utf-8 -*-
# stub: chart-js-rails 0.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "chart-js-rails"
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Keith Walsh"]
  s.date = "2013-12-02"
  s.description = "Chart.js for use in Rails asset pipeline"
  s.email = ["walsh1kt@gmail.com"]
  s.homepage = ""
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.9"
  s.summary = "Create HTML5 charts"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["> 3.1"])
    else
      s.add_dependency(%q<railties>, ["> 3.1"])
    end
  else
    s.add_dependency(%q<railties>, ["> 3.1"])
  end
end
