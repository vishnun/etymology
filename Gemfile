source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass', '~> 3.0.2.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Set default server for rack and rails to unicorn server
gem 'unicorn-rails'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]


gem 'devise'
gem 'heroku'

group :development, :test do
  gem 'pry'
  gem 'pry-debugger'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'simplecov', :require => false
  gem 'factory_girl_rails'
  gem 'jasmine', '1.3.2'
  gem 'pg', '0.15.1'
end

group :development do
  gem 'letter_opener'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'magic_encoding'
  gem 'hirb'
  gem 'awesome_print'
  gem 'brice'
  gem 'rails_best_practices', require: false
  gem 'brakeman', require: false
  gem 'bullet'
end


group :production do
    gem 'pg', '0.15.1'
    gem 'rails_12factor', '0.0.2'
    gem 'thin'
end