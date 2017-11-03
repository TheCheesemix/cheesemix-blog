# -*- encoding: utf-8 -*-
# stub: contentful-webhook-listener 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "contentful-webhook-listener"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Contentful GmbH (David Litvak Bruno)"]
  s.date = "2016-12-23"
  s.description = "A Simple HTTP Webserver with pluggable behavior for listening to Contentful API Webhooks"
  s.email = ["david.litvak@contentful.com"]
  s.homepage = "https://github.com/contentful/contentful-webhook-listener.rb"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "A Simple HTTP Webserver with pluggable behavior for listening to Contentful API Webhooks"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<listen>, ["~> 3.0.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<listen>, ["~> 3.0.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<listen>, ["~> 3.0.0"])
  end
end
