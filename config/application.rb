# application.rb
require 'rails/all'
require 'csv'
require 'pdfkit'

Bundler.require(*Rails.groups)

module AlphaHolidays
  class Application < Rails::Application
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.assets.paths << Rails.root.join('vendor', 'assets')
    config.assets.precompile += %w[.svg .eot .woff .ttf]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**' '*.{rb.yml}').to_s]
    config.i18n.default_locale = :es
    config.middleware.use PDFKit::Middleware, :print_media_type => true
  end
end
