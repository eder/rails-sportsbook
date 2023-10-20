# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'rails', '~> 7.0.8'

gem 'mysql2'

gem 'puma', '~> 5.0'

# gem "jbuilder"
# gem "redis", "~> 4.0"
gem 'kredis'
# gem "bcrypt", "~> 3.1.7"
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

# gem "image_processing", "~> 1.2"

# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-byebug' # For debugging capabilities
  gem 'pry-rails'
  gem 'rspec-rails', '~> 5.0'
  gem 'rswag-api'
  gem 'rswag-specs'
  gem 'rswag-ui'
  gem 'rubocop-rails', require: false
end

group :development do
  # gem "spring"
end
