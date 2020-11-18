source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3'
# The ruby implementation of the GraphQL language.
gem 'graphql', '~> 1.11.6'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem 'webpacker', '~> 5.x'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# sampled for file uploads, but not needed
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors', '~> 1.1.1'
# gem 'carrierwave', '~> 2.1.0'
# for file parsing and record creation
gem 'activerecord-import', '~> 1.0.7'
gem 'csv', '~> 3.1.8'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# using these on Heroku for demo
gem 'faker', '~> 2.14.0'
  # A development utility to test GraphQL queries.
gem 'graphiql-rails'
# telehone validator
gem 'telephone_number', '~> 1.4.9'
gem 'email_address', '~> 0.1.18'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :test do
  gem 'factory_bot_rails', '~> 6.1.0'
  gem 'shoulda-matchers', '~> 4.4.0'
  gem 'database_cleaner'
end

group :development, :test do
  gem 'rspec-rails', '~> 4.0.1'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]