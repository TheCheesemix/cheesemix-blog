# -*- encoding: utf-8 -*-
# stub: asset_sync 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "asset_sync"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Simon Hamilton", "David Rice", "Phil McClure"]
  s.date = "2013-08-26"
  s.description = "After you run assets:precompile your compiled assets will be synchronised with your S3 bucket."
  s.email = ["shamilton@rumblelabs.com", "me@davidjrice.co.uk", "pmcclure@rumblelabs.com"]
  s.homepage = "https://github.com/rumblelabs/asset_sync"
  s.rubyforge_project = "asset_sync"
  s.rubygems_version = "2.5.1"
  s.summary = "Synchronises Assets in a Rails 3 application and Amazon S3/Cloudfront and Rackspace Cloudfiles"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog>, [">= 1.8.0"])
      s.add_runtime_dependency(%q<activemodel>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<uglifier>, [">= 0"])
      s.add_development_dependency(%q<asset_sync>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
    else
      s.add_dependency(%q<fog>, [">= 1.8.0"])
      s.add_dependency(%q<activemodel>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<uglifier>, [">= 0"])
      s.add_dependency(%q<asset_sync>, [">= 0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
    end
  else
    s.add_dependency(%q<fog>, [">= 1.8.0"])
    s.add_dependency(%q<activemodel>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<uglifier>, [">= 0"])
    s.add_dependency(%q<asset_sync>, [">= 0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
  end
end
