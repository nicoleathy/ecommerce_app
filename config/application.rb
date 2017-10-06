require_relative 'boot'

require 'rails/all'

# config/application.rb
Bundler.require(*Rails.groups)

Dotenv::Railtie.load

HOSTNAME = ENV['HOSTNAME']

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EcommerceApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.assets.paths << "#{Rails}/vendor/assets/fonts"
    config.assets.precompile += %w(.svg .eot .woff .woff2 .ttf)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
