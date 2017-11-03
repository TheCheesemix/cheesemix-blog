$LOAD_PATH.unshift File.expand_path('lib', __FILE__)

require 'vcr'
require 'yaml'

require 'contentful_middleman'

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_fixtures"
  config.hook_into :webmock
end

require 'simplecov'
SimpleCov.root(File.expand_path(File.dirname(__FILE__) + '/..'))

def vcr(cassette)
  VCR.use_cassette(cassette) do
    yield if block_given?
  end
end

def yaml(name)
  yaml = YAML.parse(File.read("spec/fixtures/yaml_fixtures/#{name}.yaml")).to_ruby
  yield yaml if block_given?
  yaml
end

class ServerDouble
  def [](key)
  end
end

class RequestDouble
  attr_accessor :query
end

class ResponseDouble
  attr_accessor :body, :status, :content_type
end

class OptionsDouble
  DEFAULT_OPTIONS = {
    space: {id: 'cfexampleapi', name: 'cats'},
    access_token: 'b4c0n73n7fu1',
    cda_query: {},
    content_types: {},
    use_preview_api: false,
    all_entries: false,
    rebuild_on_webhook: false,
    webhook_timeout: 300
  }

  def initialize(options = DEFAULT_OPTIONS)
    options.each do |field, value|
      define_singleton_method(field.to_sym) do
        value
      end
    end
  end
end
