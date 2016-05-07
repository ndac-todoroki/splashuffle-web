# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

SplashuffleWeb::Application.configure do
  ENV["RAILS_RELATIVE_URL_ROOT"] = "/splatoon"
  Rails.application.config.relative_url_root = "/splatoon"
end

