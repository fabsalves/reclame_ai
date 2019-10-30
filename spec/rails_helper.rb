require 'spec_helper'
require 'rspec/rails'
require 'action_dispatch/system_test_case'
require File.expand_path('../config/environment', __dir__)

ActionDispatch::SystemTesting::Server.silence_puma = true

ENV['RAILS_ENV'] ||= 'test'

abort('The Rails environment is running in production mode!') if Rails.env.production?

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.include Warden::Test::Helpers

  config.before(:suite) { Warden.test_mode! }

  config.after { Warden.test_reset! }

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = false

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
end
