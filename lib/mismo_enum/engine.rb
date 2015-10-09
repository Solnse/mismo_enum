#require 'rspec/rails'
module MismoEnum
  class Engine < ::Rails::Engine
    isolate_namespace MismoEnum

    config.generators do |g|
    	g.test_framework :rspec, :view_specs => false
    	g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end
  end
end
