source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap-sass'
gem 'carrierwave', '~> 1.0'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'draper'
gem 'html2slim', '~> 0.2.0'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'mini_magick'
gem 'pdfkit'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'pundit'
gem 'rails', '~> 5.1.1'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'sass-rails', '~> 5.0'
gem 'simple-form-datepicker'
gem 'simple_form'
gem 'simple_form_fancy_uploads'
gem 'slim-rails'
gem 'sqlite3'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'wkhtmltopdf-binary', '~> 0.12.3'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pundit-matchers', '~> 1.3.0'
  gem 'rspec-rails', '~> 3.5'
  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', '~> 0.49.1', require: false
  gem 'rubocop-rspec'
  gem 'rubycritic', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
