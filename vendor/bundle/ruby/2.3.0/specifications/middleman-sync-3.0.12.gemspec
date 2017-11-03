# -*- encoding: utf-8 -*-
# stub: middleman-sync 3.0.12 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-sync"
  s.version = "3.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Karl Freeman"]
  s.date = "2013-08-24"
  s.description = "Middleman-Sync is a Middleman extension that wraps the excellent AssetSync to allow for both a CLI and after_build hook to your Middleman build's"
  s.email = ["karlfreeman@gmail.com"]
  s.homepage = "https://github.com/karlfreeman/middleman-sync"
  s.rubyforge_project = "middleman-sync"
  s.rubygems_version = "2.5.1"
  s.summary = "Synchronise your Middleman build to S3 and more"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<asset_sync>, ["~> 1.0.0"])
    else
      s.add_dependency(%q<middleman-core>, [">= 3.0.0"])
      s.add_dependency(%q<asset_sync>, ["~> 1.0.0"])
    end
  else
    s.add_dependency(%q<middleman-core>, [">= 3.0.0"])
    s.add_dependency(%q<asset_sync>, ["~> 1.0.0"])
  end
end
