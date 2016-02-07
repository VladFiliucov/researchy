source 'https://rubygems.org'

ruby '2.2.4'
gem 'rails', '5.0.0.beta1.1'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bootstrap', '~> 4.0.0.alpha3'
gem 'devise', github: 'twalpole/devise', branch: 'rails5'
gem 'simple_form'
gem 'ckeditor'
gem 'carrierwave'
gem 'mini_magick'
gem 'wkhtmltopdf-binary'
gem 'pdfkit'
gem 'puma'
gem 'rails_stdout_logging'
gem 'sidekiq'
gem 'redis'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end

# gem 'bcrypt', '~> 3.1.7'
# gem 'unicorn'
# gem 'capistrano-rails', group: :development

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'byebug'
  gem 'database_cleaner'
  gem 'rails-controller-testing'
end

group :test do
  gem "capybara"
  gem 'shoulda-matchers'
  gem "launchy"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'spring'
end
