ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require 'rspec/rails'
require 'shoulda/matchers/integrations/rspec'
require 'rspec/autorun'

include Devise::TestHelpers

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

I18n.enforce_available_locales = false

RSpec.configure do |config|
    config.mock_with :rspec

    config.pattern = '**/*_spec.rb'

    config.fixture_path = "#{::Rails.root}/spec/fixtures"

    config.use_transactional_fixtures = true

    config.infer_base_class_for_anonymous_controllers = false

    config.order = 'random'

    config.treat_symbols_as_metadata_keys_with_true_values = true

    config.filter_run :focus => true
    config.run_all_when_everything_filtered = true

    config.filter_run_excluding :broken => true

end

def authenticate(admin = FactoryGirl.create(:admin))
    sign_in admin
end

class ActiveSupport::TestCase
    ActiveRecord::Migration.check_pending!

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    #
    # Note: You'll currently still have to declare fixtures explicitly in integration tests
    # -- they do not yet inherit this setting
    fixtures :all

    # Add more helper methods to be used by all tests here...
end
