# -*- encoding: utf-8 -*-
# stub: algoliasearch 1.17.0 ruby lib

Gem::Specification.new do |s|
  s.name = "algoliasearch"
  s.version = "1.17.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Algolia"]
  s.date = "2017-10-10"
  s.description = "A simple Ruby client for the algolia.com REST API"
  s.email = "contact@algolia.com"
  s.extra_rdoc_files = ["ChangeLog", "LICENSE.txt", "README.md"]
  s.files = ["ChangeLog", "LICENSE.txt", "README.md"]
  s.homepage = "http://github.com/algolia/algoliasearch-client-ruby"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "A simple Ruby client for the algolia.com REST API"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httpclient>, ["~> 2.8.3"])
      s.add_runtime_dependency(%q<json>, [">= 1.5.1"])
      s.add_development_dependency(%q<travis>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
    else
      s.add_dependency(%q<httpclient>, ["~> 2.8.3"])
      s.add_dependency(%q<json>, [">= 1.5.1"])
      s.add_dependency(%q<travis>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
    end
  else
    s.add_dependency(%q<httpclient>, ["~> 2.8.3"])
    s.add_dependency(%q<json>, [">= 1.5.1"])
    s.add_dependency(%q<travis>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
  end
end
