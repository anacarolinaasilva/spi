require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


require 'rest-client'

API_KEY = ENV['MAILGUN_API_KEY']
API_URL = "https://api:#{API_KEY}@api.mailgun.net/v2/<your-mailgun-domain>"

RestClient.post API_URL+"/messages",
    :from => "ev@example.com",
    :to => "ev@mailgun.net",
    :subject => "This is subject",
    :text => "Text body",
    :html => "<b>HTML</b> version of the body!"

module SpiRails
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.paths << Rails.root.join("app/assets/fonts")

  end
end
