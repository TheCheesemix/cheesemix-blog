# -*- encoding: utf-8 -*-
# stub: neat 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "neat"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Joel Oliveira", "Joshua Ogle", "Kyle Fiedler", "Reda Lemeden", "Tyson Gach", "Ward Penney", "Will McMahan"]
  s.date = "2017-02-17"
  s.email = "design+neat@thoughtbot.com"
  s.executables = ["neat"]
  s.files = ["bin/neat"]
  s.homepage = "http://neat.bourbon.io"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "A lightweight Sass grid framework"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<aruba>, ["~> 0.5.0"])
      s.add_development_dependency(%q<css_parser>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<scss_lint>, ["~> 0.44"])
      s.add_runtime_dependency(%q<sass>, ["~> 3.4"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.19"])
    else
      s.add_dependency(%q<aruba>, ["~> 0.5.0"])
      s.add_dependency(%q<css_parser>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<scss_lint>, ["~> 0.44"])
      s.add_dependency(%q<sass>, ["~> 3.4"])
      s.add_dependency(%q<thor>, ["~> 0.19"])
    end
  else
    s.add_dependency(%q<aruba>, ["~> 0.5.0"])
    s.add_dependency(%q<css_parser>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<scss_lint>, ["~> 0.44"])
    s.add_dependency(%q<sass>, ["~> 3.4"])
    s.add_dependency(%q<thor>, ["~> 0.19"])
  end
end
