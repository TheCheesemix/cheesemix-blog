# -*- encoding: utf-8 -*-
# stub: contentful 0.12.0 ruby lib

Gem::Specification.new do |s|
  s.name = "contentful"
  s.version = "0.12.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Contentful GmbH (Jan Lelis)", "Contentful GmbH (Andreas Tiefenthaler)"]
  s.date = "2016-08-11"
  s.description = "Ruby client for the https://www.contentful.com Content Delivery API"
  s.email = "rubygems@contentful.com"
  s.homepage = "https://github.com/contentful/contentful.rb"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "contentful"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<http>, ["~> 1.0"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1"])
      s.add_runtime_dependency(%q<json>, ["~> 1.8"])
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, ["~> 10"])
      s.add_development_dependency(%q<rubygems-tasks>, ["~> 0.2"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-rubocop>, [">= 0"])
      s.add_development_dependency(%q<guard-yard>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.41.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2"])
      s.add_development_dependency(%q<rr>, [">= 0"])
      s.add_development_dependency(%q<vcr>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 1.17.3", "~> 1"])
      s.add_development_dependency(%q<tins>, ["~> 1.6.0"])
    else
      s.add_dependency(%q<http>, ["~> 1.0"])
      s.add_dependency(%q<multi_json>, ["~> 1"])
      s.add_dependency(%q<json>, ["~> 1.8"])
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, ["~> 10"])
      s.add_dependency(%q<rubygems-tasks>, ["~> 0.2"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-rubocop>, [">= 0"])
      s.add_dependency(%q<guard-yard>, [">= 0"])
      s.add_dependency(%q<rubocop>, ["~> 0.41.0"])
      s.add_dependency(%q<rspec>, ["~> 2"])
      s.add_dependency(%q<rr>, [">= 0"])
      s.add_dependency(%q<vcr>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 1.17.3", "~> 1"])
      s.add_dependency(%q<tins>, ["~> 1.6.0"])
    end
  else
    s.add_dependency(%q<http>, ["~> 1.0"])
    s.add_dependency(%q<multi_json>, ["~> 1"])
    s.add_dependency(%q<json>, ["~> 1.8"])
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, ["~> 10"])
    s.add_dependency(%q<rubygems-tasks>, ["~> 0.2"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-rubocop>, [">= 0"])
    s.add_dependency(%q<guard-yard>, [">= 0"])
    s.add_dependency(%q<rubocop>, ["~> 0.41.0"])
    s.add_dependency(%q<rspec>, ["~> 2"])
    s.add_dependency(%q<rr>, [">= 0"])
    s.add_dependency(%q<vcr>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 1.17.3", "~> 1"])
    s.add_dependency(%q<tins>, ["~> 1.6.0"])
  end
end
