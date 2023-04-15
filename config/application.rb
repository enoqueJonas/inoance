require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Inoance
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.active_support.key_generator = ActiveSupport::KeyGenerator.new('e89f03c3194c591b0c801fe67a11075d5d224fbb3142e6ee0b18d5d7c29a9f22e8a9a5b97b5f17fa5bacaacea71d7ac0754858885a349d2bc20723d3d8c8b33d', iterations: 1000, algorithm: 'AES-256-CBC')
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
