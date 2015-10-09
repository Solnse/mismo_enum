# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../dummy/config/environment", __FILE__)
require 'dummy/config/application'

#require 'minitest' #spec seems to complain without it.
require 'rspec/rails'
require 'rspec/autorun'
require 'factory_girl_rails'
require 'spec_helper'

FactoryGirl.definition_file_paths << File.join(File.dirname(__FILE__), 'factories')
FactoryGirl.find_definitions

#ActiveRecord::Migrator.migrate File.expand_path("../dummy/db/migrate/", __FILE__)
# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f }

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
# reseed the database before running tests every time.
  config.before(:suite) do
#    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
    MismoEnum::Engine.load_seed
    Rails.application.load_seed # loading seeds
  end

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"
end
