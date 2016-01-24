require File.expand_path('../boot', __FILE__)

require "rails/all"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"
require 'pdfkit'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Researchy
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.middleware.use PDFKit::Middleware, :print_media_type => true

    config.generators do |g|
      g.test_framework :rspec,
                        fixtures: true,
                        view_spec: false,
                        helper_specs: false,
                        routing_specs: false,
                        controller_specs: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.factory_girl dir: 'spec/factories'
    end
  end
end
