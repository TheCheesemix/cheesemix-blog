# -*- encoding: utf-8 -*-
# stub: html-hierarchy-extractor 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "html-hierarchy-extractor"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tim Carry"]
  s.date = "2016-07-20"
  s.description = "Take any arbitrary HTML as input and extract its hierarchy as a list of items, including parents and contents.It is primarily intended to be used along with Algolia, to improve the relevance of searching into huge chunks of text"
  s.email = "tim@pixelastic.com"
  s.extra_rdoc_files = ["LICENSE.txt", "README.md"]
  s.files = ["LICENSE.txt", "README.md"]
  s.homepage = "http://github.com/pixelastic/html-hierarchy-extractor"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Extract HTML hierarchy (headings and content) into a list of items"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<awesome_print>, ["~> 1.6"])
      s.add_runtime_dependency(%q<json>, ["~> 1.8"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.6"])
      s.add_development_dependency(%q<coveralls>, ["~> 0.8"])
      s.add_development_dependency(%q<flay>, ["~> 2.6"])
      s.add_development_dependency(%q<flog>, ["~> 4.3"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 4.6"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.31"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.10"])
    else
      s.add_dependency(%q<awesome_print>, ["~> 1.6"])
      s.add_dependency(%q<json>, ["~> 1.8"])
      s.add_dependency(%q<nokogiri>, ["~> 1.6"])
      s.add_dependency(%q<coveralls>, ["~> 0.8"])
      s.add_dependency(%q<flay>, ["~> 2.6"])
      s.add_dependency(%q<flog>, ["~> 4.3"])
      s.add_dependency(%q<guard-rspec>, ["~> 4.6"])
      s.add_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<rubocop>, ["~> 0.31"])
      s.add_dependency(%q<simplecov>, ["~> 0.10"])
    end
  else
    s.add_dependency(%q<awesome_print>, ["~> 1.6"])
    s.add_dependency(%q<json>, ["~> 1.8"])
    s.add_dependency(%q<nokogiri>, ["~> 1.6"])
    s.add_dependency(%q<coveralls>, ["~> 0.8"])
    s.add_dependency(%q<flay>, ["~> 2.6"])
    s.add_dependency(%q<flog>, ["~> 4.3"])
    s.add_dependency(%q<guard-rspec>, ["~> 4.6"])
    s.add_dependency(%q<jeweler>, ["~> 2.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<rubocop>, ["~> 0.31"])
    s.add_dependency(%q<simplecov>, ["~> 0.10"])
  end
end
