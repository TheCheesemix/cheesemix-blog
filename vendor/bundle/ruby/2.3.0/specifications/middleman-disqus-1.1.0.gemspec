# -*- encoding: utf-8 -*-
# stub: middleman-disqus 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-disqus"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Simon Rice", "Luke Antins"]
  s.date = "2015-06-21"
  s.description = "A Middleman extension to integrate Disqus into your site,\nsupporting Disqus configuration variables and comment counts.\n"
  s.email = ["im@simonrice.com"]
  s.homepage = "http://github.com/simonrice/middleman-disqus"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Quickly integrate Disqus comments into your Middleman site"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, ["~> 3.3"])
    else
      s.add_dependency(%q<middleman-core>, ["~> 3.3"])
    end
  else
    s.add_dependency(%q<middleman-core>, ["~> 3.3"])
  end
end
